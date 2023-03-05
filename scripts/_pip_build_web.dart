import 'dart:io';
import 'utils.dart';

main() async {
// dart pub global activate peanut
  await Process.start('dart', ['pub', 'global', 'activate', 'peanut'])
      .printProcess();
// flutter build web --web-renderer auto --release
  await Process.start('flutter', [
    'build',
    'web',
    '--web-renderer',
    'auto',
    '--release',
    '--dart-define-from-file=../env/prod.json'
  ]).printProcess();

// dart pub global run peanut -b prod_web
  await Process.start(
          'dart', ['pub', 'global', 'run', 'peanut', '-b', 'prod_web'])
      .printProcess();
}
