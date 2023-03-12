import 'package:platform_device_id/platform_device_id.dart';

Future<String> get deviceId async => await PlatformDeviceId.getDeviceId.then((_) => '$_');
