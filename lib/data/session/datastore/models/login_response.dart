import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/qunto_api_response_errors.dart';
import '../../../model/qunto_api_response_msg.dart';
import 'login_response_payload.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "messages")
        required List<QuntoApiResponseMessages>? messages,
    @JsonKey(name: "errors") required List<QuntoApiResponseErrors>? errors,
    @JsonKey(name: "payload") required LoginResponsePayload? payload,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
