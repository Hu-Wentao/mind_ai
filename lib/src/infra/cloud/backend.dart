import 'package:dart_openai/openai.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_arch_core/get_arch_core.dart';
import 'package:mind_ai/src/application.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class Backend {
  @prod
  @test
  @dev
  @preResolve
  @lazySingleton
  Future<Supabase> backend(MindAIConfig cfg) async => await Supabase.initialize(
        url: cfg.baseUrl,
        anonKey: cfg.backendAnonKey,
        headers: {"Version": cfg.version},
        debug: !kReleaseMode,
      );
}

@module
abstract class OpenAIModule {
  @Named(OpenAIStrings.openai)
  @lazySingleton
  Dio openaiDio(MindAIConfig cfg) =>
      Dio(BaseOptions(baseUrl: '${cfg.baseUrl}/v1/'));

  /// 需要手动set sk
  @lazySingleton
  OpenAIInterceptor openaiInterceptor(MindAIConfig cfg) => OpenAIInterceptor();
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
