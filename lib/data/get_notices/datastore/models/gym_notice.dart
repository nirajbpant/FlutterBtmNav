import 'package:fitness_user/data/get_notices/datastore/models/notice_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gym_notice.freezed.dart';
part 'gym_notice.g.dart';

@freezed
abstract class GymNotice with _$GymNotice {
  @JsonSerializable(explicitToJson: true)
  const factory GymNotice({
    required NoticeId id,
    @JsonKey(name: "gymId") required String gymId,
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "noticeTitle") required String noticeTitle,
    @JsonKey(name: "noticeBody") required String noticeBody,
    @JsonKey(name: "noticeType") required String noticeType,
  }) = _GymNotice;

  factory GymNotice.fromJson(Map<String, dynamic> json) =>
      _$GymNoticeFromJson(json);
}
