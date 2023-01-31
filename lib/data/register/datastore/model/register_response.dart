import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.g.dart';
part 'register_response.freezed.dart';

@freezed
abstract class RegisterReponse with _$RegisterReponse {
  const factory RegisterReponse({
    @JsonKey(name: "data") required String data,
  }) = _RegisterReponse;

  factory RegisterReponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterReponseFromJson(json);
}
