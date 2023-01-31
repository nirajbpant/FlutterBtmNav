import 'package:freezed_annotation/freezed_annotation.dart';

import 'login_response_data.dart';

part 'login_response_payload.freezed.dart';
part 'login_response_payload.g.dart';

@freezed
abstract class LoginResponsePayload with _$LoginResponsePayload {
  @JsonSerializable(explicitToJson: true)
  const factory LoginResponsePayload({
    @JsonKey(name: "data") required LoginResponseData data,
  }) = _LoginResponsePayload;

  factory LoginResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$LoginResponsePayloadFromJson(json);
}
