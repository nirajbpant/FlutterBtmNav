import 'package:fitness_user/data/network/models/access_token_response_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'access_token_base_response.freezed.dart';
part 'access_token_base_response.g.dart';

@freezed
abstract class AccessTokenBaseResponse with _$AccessTokenBaseResponse {
  @JsonSerializable(explicitToJson: true)
  const factory AccessTokenBaseResponse({
    @JsonKey(name: "payload") required AccessTokenResponsePayload? payload,
  }) = _AccessTokenBaseResponse;

  factory AccessTokenBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenBaseResponseFromJson(json);
}
