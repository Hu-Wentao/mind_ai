import '__pip_build_web.dart';
import '_pip_build_artifact.dart';
import 'utils.dart';
import 'utils_build_artifact.dart';
import 'utils_flutter_distributor.dart';
import 'utils_git.dart';
import 'utils_runner.dart';
import 'utils_spec_file.dart';

main() async {
  /// 手动配置 ==============
  const setVersion = '1.1.0';
  final commitMsg = buildCommit(
    specVersion: setVersion,
    feat: "连接后端，初步完成聊天功能，适配web",
    // fix: "",
    // refactor: "",
    // doc:
  );

  /// 自动配置 =============
  const projName = 'mind_ai';

  final currentFilePath = shScriptFile;

  /// 工作流  ==============

  // 设置版本号
  cmdSetSpecVersion(version: setVersion);

  // 更新
  await cmdRunBuildRunner(
    runnerTp: RunnerTp.build,
    deleteConflicting: true,
    // deleteConflicting: needDeleteConflicting,
  ).printProcess();

  // git 提交变更
  await cmdGitCommit(
    message: commitMsg,
    ignoreFiles: [currentFilePath],
  ).printProcess();

  await pipelineBuildWeb();

  await pipelineBuildArtifact(
    ArtifactTp.apk,
    ArtifactBuildTp.release,
    EnvSign.prod,
    projName: projName,
    specVersion: setVersion,
    onBuildSuccess: (artifactPath, artifactFile) async {
      await distributorPublish(
        artifactPath: artifactPath,
      ).printProcess();
    },
  );
  await pipelineBuildArtifact(
    ArtifactTp.ipa,
    ArtifactBuildTp.release,
    EnvSign.prod,
    projName: projName,
    specVersion: setVersion,
    onBuildSuccess: (artifactPath, artifactFile) async {
      await distributorPublish(
        artifactPath: artifactPath,
      ).printProcess();
    },
  );
}
