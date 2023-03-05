import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mind_ai/src/domain/domain.dart';
import 'package:mind_ai/src/inter/inter.dart';

main() {
  test("content", () {
    final jsMsg = {
      "role": "assistant",
      "content": "Hello there! How may I assist you today?"
    };
    final content = MsgGpt35ContentDto.fromJson(jsMsg);
    print("content $content");
  });
  test("dto", () {
    final json = {
      "from_id": "",
      "to_id": "from_id",
      "content": jsonEncode([
        {
          "message": {
            "role": "assistant",
            "content": "Hello there! How may I assist you today?"
          },
          "finish_reason": "stop",
          "index": 0
        }
      ]),
      "conversation_id": null,
      "parent_id": null,
      "model_id": "gpt-3.5-turbo"
    };

    final msg = MsgGpt35Rsp.fromJson(json);
    print("msg $msg");
  });
}
