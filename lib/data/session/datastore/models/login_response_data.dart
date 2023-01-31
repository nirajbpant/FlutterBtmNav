import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_data.freezed.dart';
part 'login_response_data.g.dart';

@freezed
abstract class LoginResponseData with _$LoginResponseData {
  const factory LoginResponseData({
    @JsonKey(name: "access_token") required String acccessToken,
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "expires_in") required int expiresIn,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}
