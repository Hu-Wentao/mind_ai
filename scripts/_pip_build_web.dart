import 'dart:io';
import 'utils.dart';

main() async {
// dart pub global activate peanut
  // await Process.start('dart', ['pub', 'global', 'activate', 'peanut'])
  //     .printProcess();
  // await buildWeb().printProcess();

  await peanutBuildWeb().printProcess();
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

// // dart pub global run peanut -b prod_web
Future<Process> peanutBuildWeb() async {
  final args = [
    'pub',
    'global',
    'run',
    'peanut',
    '-b',
    'prod_web',
  ];
  print("p.b.w# dart ${args.join(' ')}");
  return await Process.start(
    'dart',
    args,
  );
}
