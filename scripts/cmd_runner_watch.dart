import 'utils.dart';
import 'utils_runner.dart';

main() async {
  await cmdRunBuildRunner(
    runnerTp: RunnerTp.watch,
    deleteConflicting: true,
  ).printProcess();
}
