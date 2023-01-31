import 'package:fitness_user/data/get_gym_details/datastore/models/gym_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_gym_details_payload.g.dart';
part 'get_gym_details_payload.freezed.dart';

@freezed
abstract class GetGymDetailsPayload with _$GetGymDetailsPayload {
  @JsonSerializable(explicitToJson: true)
  const factory GetGymDetailsPayload({
    required GymDetails data,
  }) = _GetGymDetailsPayload;

  factory GetGymDetailsPayload.fromJson(Map<String, dynamic> json) =>
      _$GetGymDetailsPayloadFromJson(json);
}
