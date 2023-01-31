// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gym_notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GymNotice _$$_GymNoticeFromJson(Map<String, dynamic> json) => _$_GymNotice(
      id: NoticeId.fromJson(json['id'] as Map<String, dynamic>),
      gymId: json['gymId'] as String,
      createdAt: json['createdAt'] as String,
      noticeTitle: json['noticeTitle'] as String,
      noticeBody: json['noticeBody'] as String,
      noticeType: json['noticeType'] as String,
    );

Map<String, dynamic> _$$_GymNoticeToJson(_$_GymNotice instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'gymId': instance.gymId,
      'createdAt': instance.createdAt,
      'noticeTitle': instance.noticeTitle,
      'noticeBody': instance.noticeBody,
      'noticeType': instance.noticeType,
    };
