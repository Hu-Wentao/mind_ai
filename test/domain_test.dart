import 'package:flutter_test/flutter_test.dart';
import 'package:mind_ai/src/domain/domain.dart';
import 'package:mind_ai/src/inter/inter.dart';

main() {
  test('toReqByStop', () {
    const msg = MsgGpt35Rsp(
      from_id: 'from_id',
      to_id: 'to_id',
      content: [
        Gpt35ChoicesDto(
          index: 0,
          finish_reason: 'stop',
          message: MsgGpt35ContentDto(
            role: 'role',
            content: 'content',
          ),
        ),
        Gpt35ChoicesDto(
          index: 1,
          finish_reason: '',
          message: MsgGpt35ContentDto(
            role: 'role',
            content: 'content',
          ),
        ),
        Gpt35ChoicesDto(
          index: 2,
          finish_reason: 'stop',
          message: MsgGpt35ContentDto(
            role: 'role',
            content: 'content',
          ),
        ),
        Gpt35ChoicesDto(
          index: 3,
          finish_reason: '',
          message: MsgGpt35ContentDto(
            role: 'role',
            content: 'content',
          ),
        ),
        Gpt35ChoicesDto(
          index: 4,
          finish_reason: 'stop',
          message: MsgGpt35ContentDto(
            role: 'role',
            content: 'content',
          ),
        ),
        Gpt35ChoicesDto(
          index: 5,
          finish_reason: '',
          message: MsgGpt35ContentDto(
            role: 'role',
            content: 'content',
          ),
        ),
      ],
      model_id: 'model_id',
    );
    final req = msg.toReqByStop(stop: 2);
    expect(req.content.length, 4);

    final req2 = msg.toReqByStop(stop: 5);
    expect(req2.content.length, 6);
  });
  test('toReqByStop2', () {
    const msg = MsgGpt35Rsp(
      from_id: 'from_id',
      to_id: 'to_id',
      content: [
        Gpt35ChoicesDto(
          index: 0,
          finish_reason: '',
          message: MsgGpt35ContentDto(
            role: 'role',
            content: 'content',
          ),
        ),
      ],
      model_id: 'model_id',
    );

    final req3 = msg.toReqByStop(stop: 3);
    expect(req3.content.length,1);
  });
}
