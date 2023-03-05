const jwt = String.fromEnvironment(
  'API_JWT',
  defaultValue: 'DFT_API_Key',
);
const baseUrl = String.fromEnvironment(
  'BASE_URL',
  defaultValue: 'http://0.0.0.0:21772',
);