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

  Future<String> login() async {
    // 匿名登陆
    final id = await PlatformDeviceId.getDeviceId;
    if (id == null) throw Exception('获取设备ID失败');
    return id;
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
