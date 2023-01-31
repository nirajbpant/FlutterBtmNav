import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_details.dart';

part 'user_profile_response_payload.freezed.dart';
part 'user_profile_response_payload.g.dart';

@freezed
abstract class UserProfileResponsePayload with _$UserProfileResponsePayload {
  @JsonSerializable(explicitToJson: true)
  const factory UserProfileResponsePayload({
    @JsonKey(name: "details") required UserDetails? data,
  }) = _UserProfileResponsePayload;

  factory UserProfileResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponsePayloadFromJson(json);
}
