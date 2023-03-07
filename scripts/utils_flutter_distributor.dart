import 'dart:io';

/// 需要先配置 distribute_options.yaml，包括相关API_KEY；并安装flutter_distributor
Future<Process> distributorPublish({
  required String artifactPath,
  List<String> targets = const ['pgyer'],
}) {
  final args = [
    'publish',
    '--path',
    artifactPath,
    if (targets.isNotEmpty) ...[
      '--targets',
      targets.join(','),
    ],
  ];
  print('d.p# flutter_distributor ${args.join(' ')}');
  return Process.start('flutter_distributor', args);
}
