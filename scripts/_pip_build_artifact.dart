import 'dart:async';

import 'utils.dart';
import 'utils_build_artifact.dart';
import 'utils_git.dart';

///
Future<void> pipelineBuildArtifact(
  ArtifactTp artifactTp,
  ArtifactBuildTp buildTp,
  EnvSign envSign, {
  String? projectRootPath, // 为null时，需确保本文件位于'项目根路径'的直接子路径下
  required String projName, // 项目名称，实际对应 info.plist CFBundleName
  required String specVersion, // 版本号
  String? flavor, // android专有，配置flavor
  Future<void> Function(String artifactPath, String artifactFile)?
      onBuildSuccess,
}) async {
  projectRootPath ??= shScriptFileFolder.parentPath;
  const targetPath = "{projectRootPath}/scripts/results/";
  const targetFile =
      "{projName}-v{specVersion}-{envSign.name}{-flavor}-{buildTp.name}.{artifactTp.suffix}";

  print("stage0 概览 =========================================================");
  final commit =
      (await cmdGitLog().printProcess()).first.split('\n').skip(4).join('\n');

  print("stage1 构建 =========================================================");
  await cmdRunFlutterBuildArtifact(
    buildTp: buildTp,
    envSign: envSign,
    artifactTp: artifactTp,
    flavor: flavor,
  ).printProcess();

  print("stage2 move Artifact to target");

  final realTargetFile = targetFile
      .replaceAll('{projName}', projName)
      .replaceAll('{specVersion}', specVersion)
      .replaceAll('{envSign.name}', envSign.name)
      .replaceAll('{-flavor}', (flavor == null ? '' : '-$flavor'))
      .replaceAll('{buildTp.name}', buildTp.name)
      .replaceAll('{artifactTp.suffix}', artifactTp.suffix);
  final realTargetPath =
      targetPath.replaceAll('{projectRootPath}', projectRootPath) +
          realTargetFile;
  await cmdCopyArtifact(
    buildTp: buildTp,
    projectRootPath: projectRootPath,
    artifactTp: artifactTp,
    projName: projName,
    envSign: envSign,
    realTargetPath: realTargetPath,
    flavor: flavor ?? '',
  ).printProcess();

  if (onBuildSuccess != null) {
    print("stage onBuildSuccess =============================================");
    await onBuildSuccess.call(realTargetPath, realTargetFile);
  }
}
