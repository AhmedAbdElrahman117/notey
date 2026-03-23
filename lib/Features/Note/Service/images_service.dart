import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:notey/Core/Toast.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/generated/l10n.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class ImagesHelper {
  static late final Directory imagesDirectory;

  static Future<void> createImagesDirectory() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      imagesDirectory = Directory('${directory.path}/note_images');
      if (!await imagesDirectory.exists()) {
        await imagesDirectory.create(recursive: true);
      }
    } catch (e) {
      Toast.showFailed(
        message: S.current.cannotCreateImagesDirectory(e.toString()),
      );
    }
  }

  Future<Directory> createNoteDirectory(int noteId) async {
    final noteDir = Directory('${imagesDirectory.path}/note_$noteId');
    if (!await noteDir.exists()) {
      await noteDir.create(recursive: true);
    }
    return noteDir;
  }

  Future<List<String>> pickImages() async {
    List<XFile> image = await ImagePicker().pickMultiImage();

    return image.map((e) => e.path).toList();
  }

  Future<List<String>> saveToNote({
    required int noteID,
    required List<String> images,
  }) async {
    try {
      final List<String> newPaths = [];
      var noteDir = await createNoteDirectory(noteID);

      for (var image in images) {
        final File currentimage = File(image);
        final File newImage = File(
          '${noteDir.path}/${DateTime.now().millisecondsSinceEpoch}${p.extension(currentimage.path)}',
        );
        await File(currentimage.path).copy(newImage.path);
        newPaths.add(newImage.path);
      }
      return newPaths;
    } on MissingPlatformDirectoryException catch (e) {
      throw (PathException(
        message: S.current.directoryError(e.message),
      ));
    } on FileSystemException catch (e) {
      throw (FileException(
        message: S.current.fileSystemError(e.message),
      ));
    } on PlatformException catch (e) {
      throw (UnknownException(message: S.current.platformError(e.message!)),);
    } catch (e) {
      throw (PathException(message: S.current.internalError(e.toString())),);
    }
  }

  Future<void> deleteNoteImages(int noteID) async {
    try {
      Directory noteDir = Directory("${imagesDirectory.path}/note_$noteID");
      if (await noteDir.exists()) {
        await noteDir.delete(recursive: true);
      }
    } on MissingPlatformDirectoryException catch (e) {
      throw (PathException(message: S.current.directoryError(e.message)));
    } on FileSystemException catch (e) {
      throw (FileException(message: S.current.fileSystemError(e.message)));
    } catch (e) {
      throw (UnknownException(message: S.current.internalError(e.toString())),);
    }
  }

  Future<void> deleteImage(String imagePath) async {
    try {
      File imageFile = File(imagePath);
      if (await imageFile.exists()) {
        await imageFile.delete();
      }
    } on MissingPlatformDirectoryException catch (e) {
      throw (PathException(message: S.current.directoryError(e.message)));
    } on FileSystemException catch (e) {
      throw (FileException(message: S.current.fileSystemError(e.message)));
    } catch (e) {
      throw (UnknownException(message: S.current.internalError(e.toString())),);
    }
  }
}
