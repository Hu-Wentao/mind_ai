import 'utils.dart';
import 'utils_runner.dart';

main() async {
  await cmdRunBuildRunner(
    runnerTp: RunnerTp.build,
    deleteConflicting: false,
    // deleteConflicting: true,
  ).printProcess();
}
