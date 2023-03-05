import 'dart:io';

enum RunnerTp {
  build,
  clean,
  run,
  serve,
  test,
  watch,
}

/// 构建Apk
Future<Process> cmdRunBuildRunner({
  RunnerTp runnerTp = RunnerTp.build,
  bool deleteConflicting = false,
}) async =>
    await (Process.start("dart", [
      "run",
      "build_runner",
      runnerTp.name,
      if (deleteConflicting) "--delete-conflicting-outputs",
    ]));
