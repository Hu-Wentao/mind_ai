import 'package:get_arch_core/get_arch_core.dart';
import 'package:mind_ai/src/application.dart';
import 'package:mind_ai/src/application/service.dart';
import 'package:platform_info/platform_info.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

import 'device_id/device_id.dart'
    if (dart.library.html) 'device_id/device_id_web.dart'
    if (dart.library.io) 'device_id/device_id_io.dart';

@module
abstract class Local {
  @preResolve
  @lazySingleton
  Future<ClientInfo> info(MindAIConfig cfg) async => ClientInfo(
        deviceId: await deviceId,
        type: Platform.I.type.name,
        system: Platform.I.operatingSystem.name,
        version: cfg.version,
        locale: Platform.I.version,
      );

  @lazySingleton
  Uuid get uuid => const Uuid(options: {'grng': UuidUtil.cryptoRNG});
}
