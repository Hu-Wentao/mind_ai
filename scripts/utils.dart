import 'dart:async';
import 'dart:convert';
import 'dart:io';

/// 对[Process]包装
Future<Process> processWithLog(
  String funName, // use camelCase
  String executable,
  List<String> arguments, {
  bool openLog = true,
  String? workingDirectory,
  Map<String, String>? environment,
  bool includeParentEnvironment = true,
  bool runInShell = false,
  ProcessStartMode mode = ProcessStartMode.normal,
  void Function(String s) logPrint = print,
}) async {
  if (openLog) {
    logPrint("${_toAbbreviation(funName)}# $executable ${arguments.join(' ')}");
  }
  return await Process.start(
    executable,
    arguments,
    workingDirectory: workingDirectory,
    environment: environment,
    includeParentEnvironment: includeParentEnvironment,
    runInShell: runInShell,
    mode: mode,
  );
}

String _toAbbreviation(String variableName) {
  List<String> words = variableName.split(RegExp(r"(?=[A-Z])"));
  String abbreviation = words.map((word) => word[0].toLowerCase()).join(".");
  return abbreviation;
}

/// extension

/// 打印 Process输出
extension PrintFutureProcessX on Future<Process> {
  Stream<String> processStdOut() async* {
    final r = (await this);
    yield* r.stdout.map((e) => utf8.decoder.convert(e));
  }

  Stream<String> processStdErr() async* {
    final r = (await this);
    yield* r.stderr.map((e) => utf8.decoder.convert(e));
  }

  Future<List<String>> printProcess({bool ignoreError = false}) async {
    final ls = <String>[];
    (await this)
      ..stderr.map((e) => utf8.decoder.convert(e)).listen((e) {
        print("CLI#ERROR#\n$e");
        ls.add(e);
      })
      ..stdout
          .where((_) => !ignoreError)
          .map((e) => utf8.decoder.convert(e))
          .listen((e) {
        print("CLI#\n$e");
        ls.add(e);
      });
    await Future.wait([(await this).exitCode]);
    return ls;
  }
}

extension PathStringX on String {
  String get parentPath {
    final i = lastIndexOf(Platform.pathSeparator);
    final r = substring(0, i);
    return (i + 1 == length) ? r.parentPath : r;
  }

  Uri get toPathUri => Uri.directory(this, windows: Platform.isWindows);
}

/// command

/// 复制
Future<Process> shCopy({
  required String source,
  required String target,
  bool autoCreateFolder = true,
}) async {
  // 自动创建文件夹
  if (autoCreateFolder) shMakeDir(target.parentPath);
  return await Process.start("cp", [
    source,
    target,
  ]).then((e) {
    print("shCopy# Copy $source to $target");
    return e;
  });
}

void shMakeDir(String path) {
  final uri = path.toPathUri;
  Directory.fromUri(uri).createSync(recursive: true);
  print("shMakeDir# $uri");
}

///  /Users/.../scripts/utils.dart
String get shScriptFile => Platform.script.path;

/// /Users/.../scripts
String get shScriptFileFolder => shScriptFile.parentPath;
