import 'dart:convert';
import 'dart:io';

void sdkReplaceInFile({
  required String filePath,
  required Pattern from,
  String replace = '',
}) {
  final f = File(filePath);
  final result = f.readAsStringSync().replaceAll(from, replace);
  f.writeAsStringSync(result);
}

List<String> sdkSubDirs(String parentPath) {
  final r = Directory(parentPath).listSync();
  return r.map((m) => m.path).toList();
}

Map<String,dynamic> sdkReadJson({
  required String filePath,
}){
  final f = File(filePath);
  final result = f.readAsStringSync();
  return jsonDecode(result) as Map<String,dynamic>;
}
