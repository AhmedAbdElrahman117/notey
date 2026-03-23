import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:cryptography/cryptography.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/Core/encryption_helper.dart';
import 'package:notey/Core/file_service.dart';
import 'package:notey/Core/app_database.dart';
import 'package:notey/Features/Category/Services/category_service.dart';
import 'package:notey/Features/Home/Repo/note_repo.dart';
import 'package:notey/Features/Home/Services/note_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:notey/generated/l10n.dart';

class ImportService {
  List<File> _getExtractedFiles(String outputPath) {
    Directory dir = Directory(outputPath);
    List<File> files = [];
    dir.listSync().forEach((element) {
      files.add(File(element.path));
    });

    return files;
  }

  Future<String> _readFileContent(File file) async {
    return await file.readAsString();
  }

  List<dynamic> _decodeString(String json) {
    return jsonDecode(json);
  }

  Future<bool> _isDBEmpty(AppDatabase db) async {
    var res = await db.count();
    return res == 0;
  }

  Future<bool> hasConflict(AppDatabase db) async {
    bool isEmpty = await _isDBEmpty(db);
    if (isEmpty == false) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> handleConflict(
    ConflictAction action,
    AppDatabase db,
    List<Map<String, dynamic>> data,
  ) async {
    if (action == ConflictAction.replace) {
      await db.clearDB();
      await db.insertAll(data);
    } else if (action == ConflictAction.merge) {
      await db.insertAll(data);
    } else {
      return;
    }
  }

  Future<Either<AppException, Unit>> import({
    required Future<String?> Function() filePassword,
    required Future<ConflictAction> Function(AppDatabase db) onConflict,
  }) async {
    try {
      NoteService noteService = NoteService();
      CategoryService categoryService = CategoryService();

      var pickedPath = await FileService().pickFile(allowedExtension: '.zip');

      log('file picked');

      File? zipFile = pickedPath != null ? File(pickedPath) : null;
      log('file assigned');

      // user selected a file
      if (zipFile != null) {
        var password = await filePassword.call();
        if (password != null) {
          EncryptionHelper encryptionHelper = EncryptionHelper(
            password: password,
          );

          var encryptedBytes = await encryptionHelper.decrypt(
            encryptedData: await zipFile.readAsBytes(),
          );

          if (encryptedBytes != null) {
            var cachePath = await getApplicationCacheDirectory();

            var encryptedZipPath =
                '${cachePath.path}/${DateTime.now().millisecondsSinceEpoch}.zip';

            File encryptedZipFile = File(encryptedZipPath);

            await encryptedZipFile.writeAsBytes(encryptedBytes);
            log('extracting files');
            List<File> extractedFiles =
                await compute(
                  _extractFiles,
                  {
                    'zipPath': encryptedZipFile.path,
                    'token': RootIsolateToken.instance,
                  },
                ).then(
                  // get list of extracted files
                  (outputPath) {
                    log('extracted to $outputPath');
                    return _getExtractedFiles(outputPath);
                  },
                );

            log('files extracted');

            // notes json file
            var notesFile = extractedFiles.firstWhere(
              (file) => file.path.endsWith('notes.json'),
            );

            log('notes file found');

            // categories json file
            var categoriesFile = extractedFiles.firstWhere(
              (file) => file.path.endsWith('categories.json'),
            );
            log('categories file found');
            // read notes file contents
            var notesContent = await _readFileContent(notesFile);

            log('notes content read');

            // read categories file contents
            var categoriesContent = await _readFileContent(categoriesFile);

            log('categories content read');

            // decode json strings
            var decodedNotes = _decodeString(notesContent);
            var decodedCategories = _decodeString(categoriesContent);

            List<Map<String, dynamic>> notesData =
                List<Map<String, dynamic>>.from(
                  decodedNotes,
                );
            List<Map<String, dynamic>> categoriesData =
                List<Map<String, dynamic>>.from(decodedCategories);

            // handle conflicts and import data
            if (await hasConflict(noteService.noteDB)) {
              var res = await onConflict.call(noteService.noteDB);
              await handleConflict(res, noteService.noteDB, notesData);
            } else {
              noteService.addAllNotes(notesData);
            }

            if (await hasConflict(categoryService.categoryDB)) {
              var res = await onConflict.call(categoryService.categoryDB);
              await handleConflict(
                res,
                categoryService.categoryDB,
                categoriesData,
              );
            } else {
              categoryService.addAllCategories(categoriesData);
            }

            var notes = await NoteRepo.instance.getNotes();
            return notes.fold(
              (l) => throw (l),
              (r) => right(unit),
            );
          }
          return left(UnknownException(message: S.current.invalidFile));
        }
        return left(UnknownException(message: S.current.noPasswordProvided));
      }
      return left(UnknownException(message: S.current.noFileSelected));
    } on SecretBoxAuthenticationError {
      return left(
        UnknownException(message: S.current.wrongPasswordOrCorrupted),
      );
    } on FileSystemException catch (e) {
      return left(
        FileException(
          message: e.message,
          code: e.osError?.errorCode.toString(),
        ),
      );
    } on MissingPlatformDirectoryException catch (e) {
      return left(FileException(message: e.message));
    } on ArchiveException catch (e) {
      return left(FileException(message: e.message));
    } on LocalDatabaseException catch (e) {
      return left(e);
    } catch (e) {
      log(e.toString());
      return left(UnknownException(message: e.toString()));
    }
  }
}

Future<String> _extractFiles(Map<String, dynamic> data) async {
  BackgroundIsolateBinaryMessenger.ensureInitialized(
    data['token'],
  );

  String outputPath =
      '${(await getApplicationCacheDirectory()).path}/${DateTime.now().millisecondsSinceEpoch}';

  String path = data['zipPath'].toString();

  var editedPath = path.replaceAll(path.split('.').last, 'zip');

  await extractFileToDisk(editedPath, outputPath);

  return outputPath;
}

enum ConflictAction {
  replace,
  merge,
  cancel,
}
