import 'package:freezed_annotation/freezed_annotation.dart';
part 'qunto_api_response_msg.g.dart';
part 'qunto_api_response_msg.freezed.dart';

@freezed
abstract class QuntoApiResponseMessages with _$QuntoApiResponseMessages {
  const factory QuntoApiResponseMessages({
    @JsonKey(name: "shortMessage") required String shortMessage,
    @JsonKey(name: "longMessage") required String longMessage,
  }) = _QuntoApiResponseMessages;

  factory QuntoApiResponseMessages.fromJson(Map<String, dynamic> json) =>
      _$QuntoApiResponseMessagesFromJson(json);
}
