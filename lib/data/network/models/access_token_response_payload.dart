import 'package:fitness_user/data/network/models/access_token_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'access_token_response_payload.g.dart';
part 'access_token_response_payload.freezed.dart';

@freezed
abstract class AccessTokenResponsePayload with _$AccessTokenResponsePayload {
  @JsonSerializable(explicitToJson: true)
  const factory AccessTokenResponsePayload(
          {@JsonKey(name: "data") required AccessTokenResponse? data}) =
      _AccessTokenResponsePayload;

  factory AccessTokenResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenResponsePayloadFromJson(json);
}
