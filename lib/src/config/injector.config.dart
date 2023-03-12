// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dart_openai/openai.dart' as _i6;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:supabase_flutter/supabase_flutter.dart' as _i8;

import '../application.dart' as _i4;
import '../application/service.dart' as _i3;
import '../infra/cloud/backend.dart' as _i7;
import '../infra/local/local.dart' as _i9;

const String _prod = 'prod';
const String _test = 'test';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final local = _$Local();
  final service = _$Service();
  final openAIModule = _$OpenAIModule();
  final backend = _$Backend();
  await gh.lazySingletonAsync<_i3.ClientInfo>(
    () => local.info(get<_i4.MindAIConfig>()),
    preResolve: true,
  );
  gh.lazySingleton<_i5.Dio>(() => service.dio(get<_i4.MindAIConfig>()));
  gh.lazySingleton<_i6.OpenAI>(() => openAIModule.openai());
  gh.lazySingleton<_i7.OpenAIInterceptor>(
      () => openAIModule.openAIInter(get<_i4.MindAIConfig>()));
  await gh.lazySingletonAsync<_i8.Supabase>(
    () => backend.backend(get<_i4.MindAIConfig>()),
    registerFor: {_prod},
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i8.Supabase>(
    () => backend.testBackend(get<_i4.MindAIConfig>()),
    registerFor: {
      _test,
      _dev,
    },
    preResolve: true,
  );
  gh.lazySingleton<_i3.AppService>(() => service.appService(
        get<_i8.Supabase>(),
        get<_i4.MindAIConfig>(),
        get<_i3.ClientInfo>(),
      ));
  gh.lazySingleton<_i3.ChatService>(() => service.chatService(
        get<_i5.Dio>(),
        get<_i8.Supabase>(),
        get<_i6.OpenAI>(),
      ));
  gh.lazySingleton<List<_i5.Interceptor>>(
    () => openAIModule.openaiInterceptor(
      get<_i4.MindAIConfig>(),
      get<_i7.OpenAIInterceptor>(),
    ),
    instanceName: 'OpenAI',
    registerFor: {
      _dev,
      _test,
      _prod,
    },
  );
  gh.lazySingleton<_i5.Dio>(
    () => openAIModule.openaiDio(
      get<_i4.MindAIConfig>(),
      get<List<_i5.Interceptor>>(instanceName: 'OpenAI'),
    ),
    instanceName: 'OpenAI',
  );
  return get;
}

class _$Local extends _i9.Local {}

class _$Service extends _i3.Service {}

class _$OpenAIModule extends _i7.OpenAIModule {}

class _$Backend extends _i7.Backend {}
