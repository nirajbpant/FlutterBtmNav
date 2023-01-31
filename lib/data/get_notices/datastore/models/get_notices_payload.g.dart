// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notices_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetNoticesResponsePayload _$$_GetNoticesResponsePayloadFromJson(
        Map<String, dynamic> json) =>
    _$_GetNoticesResponsePayload(
      data: (json['data'] as List<dynamic>)
          .map((e) => GymNotice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetNoticesResponsePayloadToJson(
        _$_GetNoticesResponsePayload instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
