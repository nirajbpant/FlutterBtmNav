import 'package:freezed_annotation/freezed_annotation.dart';

import 'qunto_api_response_errors.dart';
import 'qunto_api_response_msg.dart';

part 'qunto_api_response.freezed.dart';
part 'qunto_api_response.g.dart';

@freezed
abstract class QuntoApiResponse with _$QuntoApiResponse {
  @JsonSerializable(explicitToJson: true)
  const factory QuntoApiResponse({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "messages")
        required List<QuntoApiResponseMessages>? messages,
    @JsonKey(name: "errors") required List<QuntoApiResponseErrors>? errors,
  }) = _QuntoApiResponse;

  factory QuntoApiResponse.fromJson(Map<String, dynamic> json) =>
      _$QuntoApiResponseFromJson(json);
}
