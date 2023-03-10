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
      );
}
