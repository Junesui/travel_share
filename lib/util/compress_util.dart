import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

/// 文件压缩工具
class CompressUtil {
  /// 压缩图片并返回文件
  static Future<File?> imageCompressAndGetFile(File? file) async {
    if (file == null) {
      return null;
    }

    // <=300KB则不压缩
    if (file.lengthSync() <= 300 * 1024) {
      return file;
    }
    var quality = 100;
    if (file.lengthSync() > 4 * 1024 * 1024) {
      // 大于4MB
      quality = 50;
    } else if (file.lengthSync() > 2 * 1024 * 1024) {
      // 大于2MB
      quality = 60;
    } else if (file.lengthSync() > 1 * 1024 * 1024) {
      // 大于1MB
      quality = 70;
    } else if (file.lengthSync() > 500 * 1024) {
      // 大于500KB
      quality = 80;
    } else if (file.lengthSync() > 300 * 1024) {
      // 大于300KB
      quality = 90;
    }
    // 获取保存压缩图片的临时路径
    var dir = await getTemporaryDirectory();
    var targetPath =
        dir.absolute.path + "/" + DateTime.now().millisecondsSinceEpoch.toString() + ".jpg";
    // 压缩
    File? resultFile = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: quality,
      minWidth: 600,
    );
    return resultFile;
  }
}
