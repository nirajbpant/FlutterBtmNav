import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_response.freezed.dart';
part 'app_config_response.g.dart';

@freezed
abstract class AppConfigResponse with _$AppConfigResponse {
  const factory AppConfigResponse({
    required bool showPrompt,
    required bool showBanner,
  }) = _AppConfigResponse;

  factory AppConfigResponse.fromJson(Map<String, dynamic> json) =>
      _$AppConfigResponseFromJson(json);
}
