import 'package:freezed_annotation/freezed_annotation.dart';
part 'qunto_api_response_errors.freezed.dart';
part 'qunto_api_response_errors.g.dart';

@freezed
abstract class QuntoApiResponseErrors with _$QuntoApiResponseErrors {
  const factory QuntoApiResponseErrors({
    @JsonKey(name: "shortMessage") required String shortMessage,
    @JsonKey(name: "longMessage") required String longMessage,
  }) = _QuntoApiResponseErrors;

  factory QuntoApiResponseErrors.fromJson(Map<String, dynamic> json) =>
      _$QuntoApiResponseErrorsFromJson(json);
}
