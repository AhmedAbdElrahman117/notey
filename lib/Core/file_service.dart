import 'dart:typed_data';

import 'package:pick_or_save/pick_or_save.dart';

class FileService {
  FileService._internal();
  static final FileService _instance = FileService._internal();
  factory FileService() => _instance;

  final PickOrSave _picker = PickOrSave();

  Future<String?> saveFile({
    required String fileName,
    required Uint8List data,
  }) async {
    var res = await _picker.fileSaver(
      params: FileSaverParams(
        saveFiles: [
          SaveFileInfo(
            fileName: fileName,
            fileData: data,
          ),
        ],
      ),
    );

    return res != null && res.isNotEmpty ? res.first : null;
  }

  Future<String?> pickFile({String? allowedExtension}) async {
    var res = await _picker.filePicker(
      params: FilePickerParams(
        enableMultipleSelection: false,
        pickerType: PickerType.file,
        allowedExtensions: allowedExtension != null ? [allowedExtension] : null,
      ),
    );

    return res != null && res.isNotEmpty ? res.first : null;
  }
}
