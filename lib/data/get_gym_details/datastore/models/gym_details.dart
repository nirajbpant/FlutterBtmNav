import 'package:freezed_annotation/freezed_annotation.dart';

part 'gym_details.freezed.dart';
part 'gym_details.g.dart';

@freezed
abstract class GymDetails with _$GymDetails {
  const factory GymDetails({
    required String quntoGymId,
    required String gymName,
    required String city,
    required String pinCode,
    required String image,
    required bool verified,
    required String country,
  }) = _GymDetails;

  factory GymDetails.fromJson(Map<String, dynamic> json) =>
      _$GymDetailsFromJson(json);
}
