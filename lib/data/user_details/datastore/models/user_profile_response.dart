import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_profile_response_payload.dart';

part 'user_profile_response.freezed.dart';
part 'user_profile_response.g.dart';

@freezed
abstract class UserProfileResponse with _$UserProfileResponse {
  @JsonSerializable(explicitToJson: true)
  const factory UserProfileResponse({
    @JsonKey(name: "status") required bool status,
    required UserProfileResponsePayload? payload,
  }) = _UserProfileResponse;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);
}
