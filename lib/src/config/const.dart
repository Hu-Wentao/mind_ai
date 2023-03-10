import 'package:get_arch_core/get_arch_core.dart';
import 'package:mind_ai/src/application.dart';
import 'package:mind_ai/src/config/pubspec.yaml.g.dart' as spec;

const jwt = String.fromEnvironment(
  'API_JWT',
  defaultValue: 'DFT_API_Key',
);
const baseUrl = String.fromEnvironment(
  'BASE_URL',
  defaultValue: 'http://0.0.0.0:21772',
);
const backendUrl = String.fromEnvironment(
  'BACKEND_URL',
  defaultValue: 'backend_url',
);

const backendAnonKey = String.fromEnvironment(
  'BACKEND_ANON_KEY',
  defaultValue: 'backend_anon_key',
);

const kName = spec.name;
const kVersion = spec.version;
final kPackAt = DateTime.fromMillisecondsSinceEpoch(spec.timestamp * 1000);

final kEnvDev = MindAIConfig(
  sign: EnvSign.dev,
  name: kName,
  version: kVersion,
  packAt: kPackAt,
  baseUrl: baseUrl,
  jwt: jwt,
  backendUrl: backendUrl,
  backendAnonKey: backendAnonKey,
);
final kEnvTest = MindAIConfig(
  sign: EnvSign.test,
  name: kName,
  version: kVersion,
  packAt: kPackAt,
  baseUrl: baseUrl,
  jwt: jwt,
  backendUrl: backendUrl,
  backendAnonKey: backendAnonKey,
);
final kEnvProd = MindAIConfig(
  sign: EnvSign.prod,
  name: kName,
  version: kVersion,
  packAt: kPackAt,
  baseUrl: baseUrl,
  jwt: jwt,
  backendUrl: backendUrl,
  backendAnonKey: backendAnonKey,
);
