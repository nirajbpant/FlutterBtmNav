import 'package:fitness_user/data/get_notices/datastore/models/get_notices_payload.dart';
import 'package:fitness_user/data/model/qunto_api_response_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notices_response.freezed.dart';
part 'get_notices_response.g.dart';

@freezed
abstract class GetNoticesResponse with _$GetNoticesResponse {
  @JsonSerializable(explicitToJson: true)
  const factory GetNoticesResponse({
    required bool status,
    required GetNoticesResponsePayload? payload,
    required QuntoApiResponseErrors? errors,
  }) = _GetNoticesResponse;

  factory GetNoticesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetNoticesResponseFromJson(json);
}
