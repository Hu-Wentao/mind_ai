import 'package:fingerprintjs/fingerprintjs.dart';

Future<String> get deviceId async => await Fingerprint.getHash();
