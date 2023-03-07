import 'dart:convert';
import 'dart:io';

import 'utils.dart';

/// 返回最近一次提交内容
Future<Process> cmdGitLog({int revisionRange = 1, bool oneLine = false}) async {
  final args = [
    'log',
    '-n',
    '$revisionRange',
    if (oneLine) '--oneline',
  ];
  print("c.g.l# git ${args.join(' ')}");
  return await Process.start('git', args);
}

/// 查看变更内容
Future<Process> cmdGitStatus({
  bool short = true,
}) async =>
    await Process.start('git', [
      'status',
      if (short) '-s', // 返回简短信息
    ]);

/// 查看存在变更的文件名称列表
Future<List<String>> cmdGitStatusFiles() async =>
    await cmdGitStatus().printProcess().then((v) =>
        v.first.split('\n').map((_) => _.split(RegExp(r"\s+")).last).toList());

// <文件名称, 变更类型>
Future<Map<String, String>> cmdGitStatusFileChanges() async =>
    await cmdGitStatus()
        .printProcess()
        .then((v) => Map.fromEntries(v.first.split('\n').map((_) {
              final ls = _.split(RegExp(r"\s+"));
              if (ls.length < 2) return const MapEntry('', '');
              final file = ls.last;
              ls.removeLast();
              final change = ls.last;
              return MapEntry(file, change);
            })));

/// 提交变更
Future<Process> cmdGitCommit({
  required String message,
  List<String>? addFiles,
  List<String>? ignoreFiles,
  bool addAll = false,
}) async {
  final allChanges = await cmdGitStatusFileChanges();
  final List<String>? adds = addAll
      ? null
      : addFiles ??
          allChanges.entries
              .map((e) => e.key)
              .where((file) =>
                  file.isNotEmpty && !(ignoreFiles?.contains(file) ?? true))
              .toList();
  // macOS-访达生成的隐藏文件
  if (Platform.isMacOS) {
    adds?.removeWhere((_) => _.endsWith('.DS_Store'));
  }

  // 移除 adds列表 中未add的文件，并打印警告
  adds?.removeWhere((_) {
    if (allChanges[_] == '??') {
      print("debug warn ！文件尚未被追踪：$_, ${allChanges[_]}");
      return true;
    }
    return false;
  });

  return await Process.start('git', [
    'commit',
    if (adds != null) ...adds,
    '-m',
    message,
    if (addAll) '-a', // 提交所有新文件
  ]);
}

/// 辅助构造提交信息
String buildCommit({
  required String specVersion,
  String? feat,
  String? fix,
  String? refactor,
  String? doc,
}) =>
    [
      'v$specVersion',
      if (feat != null) '新增：$feat',
      if (fix != null) '修复：$fix',
      if (refactor != null) '重构：$refactor',
      if (doc != null) '文档：$doc',
    ].join(';\n');
