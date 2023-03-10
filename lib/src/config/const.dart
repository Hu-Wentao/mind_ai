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

const kName = spec.name;
const kVersion = spec.version;
final kPackAt = DateTime.fromMillisecondsSinceEpoch(spec.timestamp * 1000);

final kEnvDev = MindAIConfig(
    sign: EnvSign.dev, name: kName, version: kVersion, packAt: kPackAt);
final kEnvTest = MindAIConfig(
    sign: EnvSign.test, name: kName, version: kVersion, packAt: kPackAt);
final kEnvProd = MindAIConfig(
    sign: EnvSign.prod, name: kName, version: kVersion, packAt: kPackAt);
