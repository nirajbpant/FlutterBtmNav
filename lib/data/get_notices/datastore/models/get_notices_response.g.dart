// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notices_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetNoticesResponse _$$_GetNoticesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetNoticesResponse(
      status: json['status'] as bool,
      payload: json['payload'] == null
          ? null
          : GetNoticesResponsePayload.fromJson(
              json['payload'] as Map<String, dynamic>),
      errors: json['errors'] == null
          ? null
          : QuntoApiResponseErrors.fromJson(
              json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetNoticesResponseToJson(
        _$_GetNoticesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'payload': instance.payload?.toJson(),
      'errors': instance.errors?.toJson(),
    };
