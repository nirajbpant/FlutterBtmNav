import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details.freezed.dart';
part 'user_details.g.dart';

@freezed
abstract class UserDetails with _$UserDetails {
  const factory UserDetails({
    required String? firstName,
    required String? phone,
    required String? lastName,
    required String? gender,
    required double? weight,
    required double? height,
    required String? dateOfBirth,
    required double? bmi,
    required String? physicalActivity,
    required String? goal,
    String? gymMemberGymDetailsData,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}

extension CheckUserDetailsNull on UserDetails {
  bool checkIfAnyIsNull() {
    return [firstName, lastName, gender, weight, height, dateOfBirth, bmi, goal]
        .contains(null);
  }
}
