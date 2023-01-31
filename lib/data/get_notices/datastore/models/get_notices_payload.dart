import 'package:fitness_user/data/get_notices/datastore/models/gym_notice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notices_payload.freezed.dart';
part 'get_notices_payload.g.dart';

@freezed
abstract class GetNoticesResponsePayload with _$GetNoticesResponsePayload {
  @JsonSerializable(explicitToJson: true)
  const factory GetNoticesResponsePayload({
    required List<GymNotice> data,
  }) = _GetNoticesResponsePayload;

  factory GetNoticesResponsePayload.fromJson(Map<String, dynamic> json) =>
      _$GetNoticesResponsePayloadFromJson(json);
}
