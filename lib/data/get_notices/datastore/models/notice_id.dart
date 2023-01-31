import 'package:freezed_annotation/freezed_annotation.dart';
part 'notice_id.freezed.dart';

part 'notice_id.g.dart';

@freezed
abstract class NoticeId with _$NoticeId {
  const factory NoticeId({
    required int timestamp,
    required String datnoe,
  }) = _NoticeId;

  factory NoticeId.fromJson(Map<String, dynamic> json) =>
      _$NoticeIdFromJson(json);
}
