// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileResponsePayload _$$_UserProfileResponsePayloadFromJson(
        Map<String, dynamic> json) =>
    _$_UserProfileResponsePayload(
      data: json['details'] == null
          ? null
          : UserDetails.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileResponsePayloadToJson(
        _$_UserProfileResponsePayload instance) =>
    <String, dynamic>{
      'details': instance.data?.toJson(),
    };
