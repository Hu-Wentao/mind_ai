import 'package:dart_openai/openai.dart';
import 'package:dio/dio.dart';
import 'package:dio_intercept_to_curl/dio_intercept_to_curl.dart';
import 'package:flutter/foundation.dart';
import 'package:get_arch_core/get_arch_core.dart';
import 'package:mind_ai/src/application.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class Backend {
  @prod
  @preResolve
  @lazySingleton
  Future<Supabase> backend(MindAIConfig cfg) async => await Supabase.initialize(
        url: cfg.backendUrl,
        anonKey: cfg.backendAnonKey,
        headers: {"Version": cfg.version},
        debug: !kReleaseMode,
      );

  @test
  @dev
  @preResolve
  @lazySingleton
  Future<Supabase> testBackend(MindAIConfig cfg) async =>
      await Supabase.initialize(
        url: cfg.backendUrl,
        anonKey: cfg.backendAnonKey,
        headers: {"Version": cfg.version},
        localStorage: const DevLocalStorage(),
        debug: true,
      );
}

/// only for dev
class DevLocalStorage extends LocalStorage {
  const DevLocalStorage()
      : super(
          initialize: _initialize,
          hasAccessToken: _hasAccessToken,
          accessToken: _accessToken,
          removePersistedSession: _removePersistedSession,
          persistSession: _persistSession,
        );

  static final Map _memCache = {};

  static Future<void> _initialize() async {}

  static Future<bool> _hasAccessToken() async =>
      _memCache.containsKey(supabasePersistSessionKey);

  static Future<String?> _accessToken() async =>
      _memCache[supabasePersistSessionKey] as String?;

  static Future<void> _removePersistedSession() =>
      _memCache.remove(supabasePersistSessionKey);

  static Future<void> _persistSession(String persistSessionString) async =>
      _memCache[supabasePersistSessionKey] = persistSessionString;
}

extension SupabaseX on Supabase {
  static const pubOpenAIKeyOwnerId = '19b870cc-9c9c-4ac2-995b-8de81fb55afd';

  Future<Map<String, dynamic>?> regAnnoAcct({
    required String deviceId,
    required String platform,
  }) async {
    const tbAnnoAcct = 'anno_acct';
    const coUserIdTbAnnoAct = 'user_id';
    const coDeviceIdTbAnnoAct = 'device_id';
    const coPlatformTbAnnoAct = 'platform';
    final List<dynamic> rsp = await client
        .from(tbAnnoAcct)
        .select("$coDeviceIdTbAnnoAct, $coUserIdTbAnnoAct")
        .eq(
          coDeviceIdTbAnnoAct,
          deviceId,
        );
    // log("regAnnoAcct $rsp");
    // 非空，表示已经匿名注册
    // fixme 绑定数量>1,表示设备登陆过多个账户，不允许自动登陆
    if (rsp.isNotEmpty) return rsp.first;
    // 返回null
    await client.from(tbAnnoAcct).insert({
      coDeviceIdTbAnnoAct: deviceId,
      coPlatformTbAnnoAct: platform,
    });
    return null;
  }

  // 获取sk
  Future<String> getSk({String? pubKeyOwnerId}) async {
    final List<dynamic> rsp = await client
        .from('bot_secret')
        .select('api_key,owner_id')
        // .select();
        .eq('owner_id', pubKeyOwnerId ?? pubOpenAIKeyOwnerId);
    log("getSk $rsp");
    return rsp.first['api_key']!;
  }
}

@module
abstract class OpenAIModule {
  @Named(OpenAIStrings.openai)
  @lazySingleton
  Dio openaiDio(
    MindAIConfig cfg,
    @Named(OpenAIStrings.openai) List<Interceptor> interceptors,
  ) =>
      Dio(BaseOptions(baseUrl: '${cfg.baseUrl}/v1'))
        ..interceptors.addAll(interceptors);

  @dev
  @test
  @prod
  @Named(OpenAIStrings.openai)
  @lazySingleton
  List<Interceptor> openaiInterceptor(
    MindAIConfig cfg,
    OpenAIInterceptor openAIInter,
  ) =>
      [
        openAIInter,
        if (!kReleaseMode) ...[
          DioInterceptToCurl(
            printOnSuccess: true,
          ),
          LogInterceptor(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: true,
          ),
        ]
      ];

  // 需要手动set sk,因此需要独立注入(不许要Named)
  @lazySingleton
  OpenAIInterceptor openAIInter(MindAIConfig cfg) => OpenAIInterceptor();

  @lazySingleton
  OpenAI openai() => OpenAI.create();
}

class OpenAIInterceptor extends Interceptor {
  String? sk;
  String? org;

  OpenAIInterceptor({this.sk, this.org});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return handler.next(options
      ..headers.addAll({
        "Content-Type": (options.method == 'POST' && options.data is FormData)
            ? "multipart/form-data"
            : "application/json",
        if (sk != null) "Authorization": "Bearer $sk",
        if (org != null) "OpenAI-Organization": '$org',
      }));
  }
}
