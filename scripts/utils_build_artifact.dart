import 'dart:io';

import 'utils.dart';

enum ArtifactBuildTp { debug, profile, release, flavor }

enum EnvSign { dev, uat, prod }

enum ArtifactTp {
  apk(
    "{projectRootPath}/build/app/outputs/flutter-apk/",
    "app{-flavor}-{buildTp.name}",
    'apk',
  ),
  ipa(
    "{projectRootPath}/build/ios/ipa/",
    "{projName}",
    'ipa',
  );

  /// 可用变量
  /// {projectRootPath}，项目根路径，用于确定文件相对位置
  /// {buildTp.name}, 构建类型名称，debug/profile/release，常用于APK产物名
  /// {projName}，项目名称，常用于IPA产物名
  final String folder;
  final String artifactName;
  final String suffix;

  const ArtifactTp(
    this.folder, // 产物所在路径
    this.artifactName, // 产物名称(不包含后缀)
    this.suffix, // 产物后缀
  );

  String buildRealArtifactPath({
    required String projectRootPath,
    required ArtifactBuildTp buildTp,
    required String projName,
    String? flavor,
  }) =>
      '${folder.replaceAll('{projectRootPath}', projectRootPath)}${artifactName.replaceAll('{-flavor}', (flavor == null ? '' : '-$flavor')).replaceAll('{buildTp.name}', buildTp.name).replaceAll('{projName}', projName)}.$suffix';
}

/// 构建Apk
/// flutter build apk --flavor common --release --dart-define=EnvSign=2
Future<Process> cmdRunFlutterBuildArtifact({
  ArtifactBuildTp buildTp = ArtifactBuildTp.release,
  EnvSign envSign = EnvSign.prod,
  required ArtifactTp artifactTp,
  String? flavor,
  bool verbose = false,
}) async {
  final args = [
    "build",
    artifactTp.name, // apk/ipa
    "--${buildTp.name}", // debug/profile/release
    if (flavor != null) ...[
      "--flavor",
      flavor,
    ],
    "--dart-define=EnvSign=${envSign.index}", // 0/1/2 ; dev/uat/prod
    if (verbose) "--verbose",
  ];
  print("c.r.f.b.a# flutter ${args.join(' ')}");
  return await Process.start("flutter", args);
}

/// 拷贝产物
/// 返回 拷贝目标路径
Future<Process> cmdCopyArtifact({
  required ArtifactBuildTp buildTp,
  required String projectRootPath,
  required ArtifactTp artifactTp,
  required String projName, // 当前项目名称
  required EnvSign envSign,
  String? artifactFilePath, // 仅debug
  required String realTargetPath,
  String flavor = '',
}) async {
  final realArtifactPath = artifactFilePath ??
      artifactTp.buildRealArtifactPath(
        projectRootPath: projectRootPath,
        buildTp: buildTp,
        projName: projName,
        flavor: flavor,
      );

  return await shCopy(
    source: realArtifactPath,
    target: realTargetPath,
  );
}

// curl -X POST "http://120.55.164.108:6820/commonUpload/uploadFlutter" -H "accept: */*" -H "Content-Type: multipart/form-data" -F "file=@deng_kun-release.apk;type=application/vnd.android.package-archive"
Future<Process> cmdCurlUpload({
  required String url,
  required String file,
}) async {
  final fullHeaders = {
    "accept": "*/*",
    "Content-Type": "multipart/form-data",
  };

  // -X POST "http://120.55.164.108:6820/commonUpload/uploadFlutter"
  final pPost = ["-X", "POST", url];
  // '-H "accept: */*" -H "Content-Type: multipart/form-data"'
  final pHeaders =
      fullHeaders.entries.expand((e) => ["-H", '${e.key}: ${e.value}']);
  // -F "file=@deng_kun-release.apk;type=application/vnd.android.package-archive"
  final pFile = [
    "-F",
    "file=@$file",
    "type=application/vnd.android.package-archive"
  ];
  final params = [...pPost, ...pHeaders, ...pFile];
  print("cmdCurlUpload# curl ${params.join(" ")}");
  return await Process.start("curl", params);
}

main() async {
  await cmdRunFlutterBuildArtifact(
    // artifactTp: ArtifactTp.ipa,
    artifactTp: ArtifactTp.apk,
    buildTp: ArtifactBuildTp.release,
    envSign: EnvSign.prod,
    // flavor: '"common"',
    flavor: 'xiaomi',
  ).printProcess();
}
