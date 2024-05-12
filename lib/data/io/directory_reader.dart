import 'dart:io';

import 'package:path_provider/path_provider.dart';

class DirectoryReader {
  static Future<String> get getAppDirectory async {
    final directory1 = await getApplicationCacheDirectory();
    final directory2 = await getApplicationDocumentsDirectory();
    final directory3 = await getApplicationSupportDirectory();
    return '${directory1.path}\n${directory2.path}\n${directory3.path}';
  }

  static Future<String> get getDirectory async {
    // final directory = await getExternalStorageDirectory();
    final directory = Directory.current.path;
    return directory;
  }
}
