import 'dart:convert';
import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:template_mobile_apps/data/constants/fa_hive_constants.dart';

class SecureHive {
  static Future<Uint8List> getKey() async {
    final encryptionBox = await Hive.openBox(FAHiveBoxName.encryptionBox);
    String? encryptionKey = encryptionBox.get("encryption_key");
    if (encryptionKey == null) {
      final newKey = Hive.generateSecureKey();
      await encryptionBox.put("encryption_key", base64Encode(newKey));
    }

    final key = await encryptionBox.get("encryption_key");
    final encryptionKeyUint8List = base64Url.decode(key!);
    return encryptionKeyUint8List;
  }
}