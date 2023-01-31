import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token_response.freezed.dart';

part 'access_token_response.g.dart';

@freezed
abstract class AccessTokenResponse with _$AccessTokenResponse {
  const factory AccessTokenResponse({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "refresh_token") required String refreshtoken,
    @JsonKey(name: "expires_in") required int expiresIn,
  }) = _AccessTokenResponse;

  factory AccessTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenResponseFromJson(json);
}
