// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gym_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetGymDetailsResponse _$$_GetGymDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetGymDetailsResponse(
      status: json['status'] as bool,
      errors: json['errors'] == null
          ? null
          : QuntoApiResponseErrors.fromJson(
              json['errors'] as Map<String, dynamic>),
      payload: json['payload'] == null
          ? null
          : GetGymDetailsPayload.fromJson(
              json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetGymDetailsResponseToJson(
        _$_GetGymDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errors': instance.errors?.toJson(),
      'payload': instance.payload?.toJson(),
    };
