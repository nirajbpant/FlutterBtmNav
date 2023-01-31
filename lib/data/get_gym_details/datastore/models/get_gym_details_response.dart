import 'package:fitness_user/data/get_gym_details/datastore/models/get_gym_details_payload.dart';
import 'package:fitness_user/data/model/qunto_api_response_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_gym_details_response.g.dart';
part 'get_gym_details_response.freezed.dart';

@freezed
abstract class GetGymDetailsResponse with _$GetGymDetailsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory GetGymDetailsResponse({
    required bool status,
    required QuntoApiResponseErrors? errors,
    required GetGymDetailsPayload? payload,
  }) = _GetGymDetailsResponse;

  factory GetGymDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetGymDetailsResponseFromJson(json);
}
