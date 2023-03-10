import 'package:get_arch_core/get_arch_core.dart';

class MindAIConfig extends BaseConfig {
  MindAIConfig({
    required EnvSign sign,
    required String name,
    required String version,
    required DateTime packAt,
  }) : super(sign: sign, name: name, version: version, packAt: packAt);
}

class MindAIPackage extends BasePackage<MindAIConfig> {
  MindAIPackage({
    Future<void> Function(GetIt g, MindAIConfig c)? onBeforePkgInit,
    Future<void> Function(GetIt g, MindAIConfig config)? onAfterPkgInit,
    Future<void> Function(MindAIConfig config, Object e, StackTrace s)?
    onPkgInitError,
    Future<void> Function(MindAIConfig config)? onPkgInitFinally,
    Future<void> Function(GetIt g, MindAIConfig config)? initPackageDI,
  }) : super(
    onBeforePkgInit,
    onAfterPkgInit,
    onPkgInitError,
    onPkgInitFinally,
    initPackageDI,
  );
}

class MindAIApplication extends MindAIPackage with MxAppRun<MindAIConfig> {
  @override
  final Future<void> Function()? onAfterAppRun;

  @override
  final Future<void> Function(Object e, StackTrace s)? onAppError;

  @override
  final Future<void> Function()? onAppFinally;

  @override
  final Future<void> Function(GetIt getIt, MindAIConfig config)?
  onApplicationRun;

  @override
  final Future<void> Function(GetIt getIt, MindAIConfig config)?
  onBeforeAppInit;

  @override
  final Future<void> Function(GetIt g)? onBeforeAppRun;

  @override
  final Iterable<IPackage<IConfig>> packages;

  MindAIApplication({
    this.packages = const [],
    this.onBeforeAppInit,
    this.onBeforeAppRun,
    this.onApplicationRun,
    this.onAfterAppRun,
    this.onAppError,
    this.onAppFinally,
    super.initPackageDI,
  });
}
