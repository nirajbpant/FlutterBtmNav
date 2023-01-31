// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessTokenResponse _$$_AccessTokenResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AccessTokenResponse(
      accessToken: json['access_token'] as String,
      refreshtoken: json['refresh_token'] as String,
      expiresIn: json['expires_in'] as int,
    );

Map<String, dynamic> _$$_AccessTokenResponseToJson(
        _$_AccessTokenResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshtoken,
      'expires_in': instance.expiresIn,
    };
