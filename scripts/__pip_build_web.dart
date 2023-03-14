import 'dart:io';
import 'utils.dart';
import 'utils_file.dart';

main() async {
  // await cmdRunBuildRunner().printProcess();
  //
  await pipelineBuildWeb();

  // await peanutBuildWeb(
  //   branch: 'prod_web',
  //   msg: 'Build Web v1.1.0',
  // ).printProcess();
}

pipelineBuildWeb() async {
  final root = shScriptFileFolder.parentPath;

  await processWithLog('removeOldWebBuild', 'rm', ['-rf', '$root/build/web/']);

  await buildWeb(
    webRender: 'html',
    pwaStrategy: 'none',
    defineFile: '$root/env/prod.json',
  ).printProcess();

  await flutterWebOptimizer().printProcess();

  // rm 移除canvasKit
  await processWithLog(
      'removeCanvaskit', 'rm', ['-rf', '$root/build/web/canvaskit']);
  // rm 移除声明
  await processWithLog(
      'removeNotices', 'rm', ['$root/build/web/assets/NOTICES']);

  // # 创建一个新分支并切换到该分支：
  const newBranchName = 'prod_web';
  await processWithLog(
      'newBranch', 'git', ['checkout', '--orphan', newBranchName]);
  // # 删除当前分支上的所有文件和提交记录：
  await processWithLog('removeAllGitInBranch', 'git', ['rm', '-rf', '.']);
  // # 全部删除，只保留 /build/web
  await processWithLog(
      'removeAllFileExclude', 'rm', ['-r', '$root/!(build/web)']);
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
