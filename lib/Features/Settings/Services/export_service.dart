import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/Core/encryption_helper.dart';
import 'package:notey/Core/file_service.dart';
import 'package:notey/Features/Category/Services/category_service.dart';
import 'package:notey/Features/Home/Services/note_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:notey/generated/l10n.dart';

class ExportService {
  final String password;

  final NoteService _noteService = NoteService();
  final CategoryService _categoryService = CategoryService();
  final FileService _fileService = FileService();
  late final EncryptionHelper _encryptionHelper;

  ExportService({required this.password}) {
    _encryptionHelper = EncryptionHelper(password: password);
  }

  Future<List<Map<String, dynamic>>> getNotes() async {
    return await _noteService.getNotes(
      columns: [
        'title',
        'content',
        'category',
        'createdAt',
        'syncStatus',
        'isModified',
        'isDeleted',
        'backgroundColor',
        'backgroundPath',
        'images',
        'isFavourite',
      ],
    );
  }

  Future<List<Map<String, dynamic>>> getCategories() async {
    return await _categoryService.getCategories(
      columns: [
        'name',
        'syncStatus',
        'isModified',
        'isDeleted',
        'createdAt',
      ],
    );
  }

  String encodeData(List<Map<String, dynamic>> data) {
    return jsonEncode(data);
  }

  Future<File> createFile(String data, String fileName) async {
    final tempDir = await getTemporaryDirectory();
    File file = File('${tempDir.path}/$fileName');
    await file.writeAsString(data);
    return file;
  }

  Future<Either<AppException, Unit>> export() async {
    try {
      var notesRes = await getNotes();
      var categoriesRes = await getCategories();

      log(notesRes.toString());

      log("Got Data");

      String encodedNotes = encodeData(notesRes);
      log("Encoded Notes");
      String encodedCategories = encodeData(categoriesRes);
      log("Encoded Categories");

      File notesFile = await createFile(
        encodedNotes,
        'notes.json',
      );

      log("Created Notes File");

      File categoriesFile = await createFile(
        encodedCategories,
        'categories.json',
      );

      log("Created Categories File");

      final tempDir = await getTemporaryDirectory();

      File zipFile = await compute(
        compress,
        {
          'files': [notesFile.path, categoriesFile.path],
          'outputPath': '${tempDir.path}/notey_backup',
          'token': RootIsolateToken.instance,
        },
      );

      log("Created Zip File");

      var bytes = await compute(
        compressToBytes,
        {
          'file': zipFile,
          'token': RootIsolateToken.instance,
        },
      );

      var encryptedFile = await _encryptionHelper.encrypt(data: bytes);

      log("Created Bytes");

      var output = await _fileService.saveFile(
        fileName: 'notey_backup.zip',
        data: encryptedFile,
      );

      log('Saved Zip File');

      return output != null
          ? right(unit)
          : left(
              UnknownException(message: S.current.noOutputDirectorySelected),
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
    } on DatabaseException catch (e) {
      return left(LocalDatabaseException(dbException: e));
    } on ArchiveException catch (e) {
      return left(FileException(message: e.message));
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }
}

Future<File> compress(Map<String, dynamic> data) async {
  BackgroundIsolateBinaryMessenger.ensureInitialized(data['token']);

  final zipPath = data['outputPath'];

  var encoder = ZipFileEncoder();

  encoder.create(zipPath);

  List<String> files = data['files'];

  for (var path in files) {
    await encoder.addFile(File(path));
  }

  encoder.close();

  return File(zipPath);
}

Future<Uint8List> compressToBytes(Map<String, dynamic> data) async {
  BackgroundIsolateBinaryMessenger.ensureInitialized(data['token']);

  var file = data['file'] as File;
  var bytes = await file.readAsBytes();
  return bytes;
}
