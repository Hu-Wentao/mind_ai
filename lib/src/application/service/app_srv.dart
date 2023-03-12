part of '../service.dart';

class AppService {
  final ClientInfo _info;
  final Supabase backend;
  final MindAIConfig cfg;

  AppService(this.backend, this.cfg, this._info);

  /// 检查App更新，如果没有更新返回null
  Future<AppUpdateInfo?> checkVersion() async {
    // v1.2 迁移到CF中的 client_check
    final rsp = await backend.client.functions
        .invoke('version_check', body: _info.toJson());
    final info = AppUpdateInfo.fromJson(rsp.data);
    if (info.version == cfg.version) return null;
    return info;
  }

  Stream<AuthState> authStateChange() => backend.client.auth.onAuthStateChange;

  String login() {
    // todo 考虑接入supa自动登陆，避免设备登陆与session恢复冲突
    // 匿名登陆（设备登陆）
    // 注册匿名登陆
    backend.regAnnoAcct(
      deviceId: _info.deviceId,
      platform: _info.platform,
    );
    return _info.deviceId;
  }
}

@freezed
class ClientInfo with _$ClientInfo {
  const factory ClientInfo({
    @JsonKey(name: 'device_id') required String deviceId, // platform
    @JsonKey(name: 'locale') required String locale, // zh / ..
    @JsonKey(name: 'type') required String type, // io / web
    @JsonKey(name: 'system') required String system, // mac / ..
    @JsonKey(name: 'version') required String version, // 13.2.1 / ..
  }) = _ClientInfo;

  // fromJson
  factory ClientInfo.fromJson(Map<String, dynamic> json) =>
      _$ClientInfoFromJson(json);
}

extension ClientInfoX on ClientInfo {
  String get platform => type == 'io' ? system : 'web';
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
