// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessTokenBaseResponse _$$_AccessTokenBaseResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AccessTokenBaseResponse(
      payload: json['payload'] == null
          ? null
          : AccessTokenResponsePayload.fromJson(
              json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AccessTokenBaseResponseToJson(
        _$_AccessTokenBaseResponse instance) =>
    <String, dynamic>{
      'payload': instance.payload?.toJson(),
    };
