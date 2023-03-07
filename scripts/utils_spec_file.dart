import 'dart:io';

import 'utils.dart';
import 'utils_file.dart';

main() {
  cmdSetSpecVersion(version: '1.0.0');
}

/// pubspec.yaml 工具

String cmdGetSpecVersion(String projectRootPath) =>
    File('$projectRootPath/pubspec.yaml')
        .readAsLinesSync()
        .firstWhere((line) => line.startsWith("version:"))
        .replaceAll(RegExp(r"version: "), '');

///
void cmdSetSpecVersion({String? version}) {
  if (version == null) {
    print("未设置版本号");
    return;
  }
  final projectRootPath = shScriptFileFolder.parentPath;
  final path = '$projectRootPath/pubspec.yaml';
  print("spec path# $path, version $version");
  sdkReplaceInFile(
    filePath: path,
    from: RegExp(r'version: .+'),
    replace: 'version: $version',
  );
}
