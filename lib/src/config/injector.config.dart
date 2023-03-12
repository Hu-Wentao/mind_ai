// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:supabase_flutter/supabase_flutter.dart' as _i6;

import '../application.dart' as _i4;
import '../application/service.dart' as _i7;
import '../infra/cloud/backend.dart' as _i5;

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
  final openAIModule = _$OpenAIModule();
  final service = _$Service();
  final backend = _$Backend();
  gh.lazySingleton<_i3.Dio>(
    () => openAIModule.openaiDio(get<_i4.MindAIConfig>()),
    instanceName: 'OpenAI',
  );
  gh.lazySingleton<_i3.Dio>(() => service.dio(get<_i4.MindAIConfig>()));
  gh.lazySingleton<_i5.OpenAIInterceptor>(
      () => openAIModule.openaiInterceptor(get<_i4.MindAIConfig>()));
  await gh.lazySingletonAsync<_i6.Supabase>(
    () => backend.backend(get<_i4.MindAIConfig>()),
    registerFor: {
      _prod,
      _test,
      _dev,
    },
    preResolve: true,
  );
  gh.lazySingleton<_i7.AppService>(() => service.appService(
        get<_i3.Dio>(),
        get<_i6.Supabase>(),
        get<_i4.MindAIConfig>(),
      ));
  gh.lazySingleton<_i7.ChatService>(() => service.chatService(get<_i3.Dio>()));
  return get;
}

class _$OpenAIModule extends _i5.OpenAIModule {}

class _$Service extends _i7.Service {}

class _$Backend extends _i5.Backend {}
