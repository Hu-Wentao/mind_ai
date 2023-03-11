part of '../service.dart';

class AppService {
  final Dio _dio;
  AppService(this._dio);

  /// 检查App更新，如果没有更新返回null
  Future<AppUpdateInfo?> checkVersion() async {
    final rsp = await _dio.get('/client/version', queryParameters: {
      "platform": Platform.operatingSystem,
      'v': version,
    });
    final info = AppUpdateInfo.fromJson(rsp.data);
    if (info.version == version) return null;
    return info;
  }
}

@freezed
class AppUpdateInfo with _$AppUpdateInfo {
  const factory AppUpdateInfo({
    required String version,
    String? desc,
    String? url,
  }) = _AppUpdateInfo;
  // fromJson
  factory AppUpdateInfo.fromJson(Map<String, dynamic> json) =>
      _$AppUpdateInfoFromJson(json);
}
