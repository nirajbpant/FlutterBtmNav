// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileResponse _$$_UserProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserProfileResponse(
      status: json['status'] as bool,
      payload: json['payload'] == null
          ? null
          : UserProfileResponsePayload.fromJson(
              json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileResponseToJson(
        _$_UserProfileResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'payload': instance.payload?.toJson(),
    };
