import 'dart:typed_data';
import 'package:cryptography/cryptography.dart';

class EncryptionHelper {
  final String password;

  final AesGcm _algorithm = AesGcm.with256bits();

  final String signature = 'NoteyAppSignature';

  final kdf = Pbkdf2(
    macAlgorithm: Hmac.sha256(),
    iterations: 10000,
    bits: 256,
  );

  EncryptionHelper({required this.password});

  bool isValidFileFormat(List<int> data) {
    var signatureBytes = signature.codeUnits;

    var header = data.sublist(0, signatureBytes.length);

    if (data.length < header.length) return false;

    for (var i = 0; i < signatureBytes.length; i++) {
      if (header[i] != signatureBytes[i]) {
        return false;
      }
    }

    return true;
  }

  Future<SecretKey> _generateKey() async {
    return await kdf.deriveKeyFromPassword(
      password: password,
      nonce: 'NoteyApp'.codeUnits,
    );
  }

  Future<Uint8List> buildSignData({required List<int> data}) async {
    final builder = BytesBuilder();
    builder.add(signature.codeUnits);
    builder.add(data);

    return builder.toBytes();
  }

  Future<Uint8List> encrypt({required List<int> data}) async {
    final key = await _generateKey();

    final box = await _algorithm.encrypt(data, secretKey: key);

    return await buildSignData(data: box.concatenation());
  }

  Future<List<int>?> decrypt({required List<int> encryptedData}) async {
    if (isValidFileFormat(encryptedData) == false) {
      return null;
    }

    final key = await _generateKey();

    final data = encryptedData.sublist(signature.length);

    final box = SecretBox.fromConcatenation(
      data,
      nonceLength: 12,
      macLength: 16,
    );

    return await _algorithm.decrypt(box, secretKey: key);
  }
}
