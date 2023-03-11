part of '../service.dart';

class AppService {
  final Dio _dio;
  final Supabase backend;

  AppService(this._dio, this.backend);

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
    // 标记匿名登陆
    _regAnnoAcct(platformId: id, platform: Platform.operatingSystem);
    return id;
  }

  Future<void> _regAnnoAcct({
    required String platformId,
    required String platform,
  }) async {
    const tbAnnoAcct = 'anno_acct';
    const coUserIdTbAnnoAct = 'user_id';
    const coPlatformIdTbAnnoAct = 'platform_id';
    final rsp = await backend.client
        .from(tbAnnoAcct)
        .select("$coPlatformIdTbAnnoAct, $coUserIdTbAnnoAct")
        .eq(
          coPlatformIdTbAnnoAct,
          platformId,
        );
    print(
        "debug _regAnnoAcct rsp: $rsp, isJs ${rsp is Map<String, dynamic>}, isList ${rsp is List<dynamic>}");

    return await backend.client.from(tbAnnoAcct).insert({
      "platform_uuid": platformId,
      "platform": platform,
    });
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
