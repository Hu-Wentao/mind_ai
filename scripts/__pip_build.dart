import '_pip_build_artifact.dart';
import 'utils.dart';
import 'utils_build_artifact.dart';
import 'utils_flutter_distributor.dart';
import 'utils_spec_file.dart';

main() async {
  ///
  const setVersion = '1.0.4';

  ///
  cmdSetSpecVersion(version: setVersion);

  await pipelineBuildArtifact(
    ArtifactTp.apk,
    ArtifactBuildTp.release,
    EnvSign.prod,
    projName: 'mind_ai',
    specVersion: setVersion,
    onBuildSuccess: (artifactPath, artifactFile) async {
      await distributorPublish(
        artifactPath: artifactPath,
      ).printProcess();
    },
  );
}
