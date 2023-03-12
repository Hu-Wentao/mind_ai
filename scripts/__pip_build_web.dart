import 'dart:io';
import 'utils.dart';
import 'utils_file.dart';
import 'utils_runner.dart';
import 'utils_spec_file.dart';

main() async {
  await cmdRunBuildRunner().printProcess();

  await pipelineBuildWeb();
}

pipelineBuildWeb() async {
  await buildWeb(
    webRender: 'html',
    pwaStrategy: 'none',
    defineFile: '../env/prod.json',
  ).printProcess();

  await flutterWebOptimizer().printProcess();

  // rm -rf ../build/web/canvaskit
  await Process.start('rm', ['-rf', '../build/web/canvaskit']);
  // rm ../build/web/assets/NOTICES
  await Process.start('rm', ['../build/web/assets/NOTICES']);

  final ver = cmdGetSpecVersion(shScriptFileFolder.parentPath);
  await peanutBuildWeb(
    branch: 'prod_web',
    msg: 'Build Web $ver',
  ).printProcess();
}

Future<Process> buildWeb({
  String webRender = 'auto',
  String pwaStrategy = 'none',
  String defineFile = '../env/prod.json',
}) async {
  final env = sdkReadJson(filePath: defineFile);
  final args = [
    'build',
    'web',
    '--web-renderer',
    webRender,
    '--release',
    '--pwa-strategy',
    pwaStrategy,
    for (final kv in env.entries) '--dart-define=${kv.key}=${kv.value}',
  ];
  print("f.b.w# flutter ${args.join(' ')}");
  return await Process.start(
    'flutter',
    args,
  );
}

// flutter pub run flutter_web_optimizer optimize --asset-base https://ai.mindbase.cloud --plugin flutter_web_cos_upload_plugin
Future<Process> flutterWebOptimizer({
  String assetBase = './',
}) async {
  final args = [
    'pub',
    'run',
    'flutter_web_optimizer',
    'optimize',
    '--asset-base',
    assetBase,
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
