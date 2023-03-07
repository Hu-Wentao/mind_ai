import 'dart:io';
import 'utils.dart';
import 'utils_runner.dart';
import 'utils_spec_file.dart';

main() async {
  await cmdRunBuildRunner().printProcess();

  // await flutterWebOptimizer().printProcess();
  await buildWeb().printProcess();

  final ver = cmdGetSpecVersion(shScriptFileFolder.parentPath);
  await peanutBuildWeb(msg: 'Build Web $ver').printProcess();
}

Future<Process> buildWeb() async {
  // flutter build web --web-renderer auto --release
  final args = [
    'build',
    'web',
    '--web-renderer',
    'auto',
    '--release',
    '--dart-define-from-file=../env/prod.json'
  ];
  print("f.b.w# flutter ${args.join(' ')}");
  return await Process.start(
    'flutter',
    args,
  );
}

// flutter pub run flutter_web_optimizer optimize --asset-base https://ai.mindbase.cloud --plugin flutter_web_cos_upload_plugin
Future<Process> flutterWebOptimizer() async {
  final args = [
    'pub',
    'run',
    'flutter_web_optimizer',
    'optimize',
    '--asset-base',
    'https://ai.mindbase.cloud',
    '--plugin',
    'flutter_web_cos_upload_plugin',
  ];
  print("f.w.o# flutter ${args.join(' ')}");
  return await Process.start(
    'flutter',
    args,
  );
}

// // dart pub global run peanut -b prod_web
Future<Process> peanutBuildWeb({
  String branch = 'prod_web',
  String? msg,
}) async {
  final args = [
    'pub',
    'global',
    'run',
    'peanut',
    '-b',
    branch,
    if (msg != null) ...['-m', msg]
  ];
  print("p.b.w# dart ${args.join(' ')}");
  return await Process.start(
    'dart',
    args,
  );
}
