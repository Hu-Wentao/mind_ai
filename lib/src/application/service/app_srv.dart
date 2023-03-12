part of '../service.dart';

class AppService {
  final Dio _dio;
  final Supabase backend;
  final MindAIConfig cfg;

  AppService(this._dio, this.backend, this.cfg);

  /// 检查App更新，如果没有更新返回null
  Future<AppUpdateInfo?> checkVersion() async {
    final rsp = await backend.client.functions.invoke('version_check', body: {
      "platform": Platform.operatingSystem,
      'v': cfg.version,
    });
    final info = AppUpdateInfo.fromJson(rsp.data);
    if (info.version == cfg.version) return null;
    return info;
  }

  Stream<AuthState> authStateChange() => backend.client.auth.onAuthStateChange;

  Future<String> login() async {
    // todo 考虑接入supa自动登陆，避免设备登陆与session恢复冲突
    // 匿名登陆（设备登陆）
    final id = await PlatformDeviceId.getDeviceId;
    if (id == null) throw Exception('获取设备ID失败');
    // 注册匿名登陆
    backend.regAnnoAcct(
      platformId: id,
      platform: Platform.operatingSystem,
    );
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
