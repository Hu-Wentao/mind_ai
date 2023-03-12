import 'package:fingerprintjs/fingerprintjs.dart';
import 'package:get_arch_core/get_arch_core.dart';
import 'package:mind_ai/src/application.dart';
import 'package:mind_ai/src/application/service.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:platform_info/platform_info.dart';

@module
abstract class Local {
  @preResolve
  @lazySingleton
  Future<ClientInfo> info(MindAIConfig cfg) async => ClientInfo(
        deviceId: Platform.I.isIO
            ? await PlatformDeviceId.getDeviceId.then((_) => '$_')
            : await Fingerprint.getHash(),
        type: Platform.I.type.name,
        system: Platform.I.operatingSystem.name,
        version: cfg.version,
        locale: Platform.I.version,
      );
}
