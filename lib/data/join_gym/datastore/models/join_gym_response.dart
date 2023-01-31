import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/qunto_api_response_errors.dart';
import '../../../model/qunto_api_response_msg.dart';

part 'join_gym_response.freezed.dart';
part 'join_gym_response.g.dart';

@freezed
abstract class JoinGymResponse with _$JoinGymResponse {
  @JsonSerializable(explicitToJson: true)
  const factory JoinGymResponse({
    required bool status,
    required QuntoApiResponseErrors? errors,
    required List<QuntoApiResponseMessages>? messages,
  }) = _JoinGymResponse;

  factory JoinGymResponse.fromJson(Map<String, dynamic> json) =>
      _$JoinGymResponseFromJson(json);
}
