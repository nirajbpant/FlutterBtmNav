part of 'user_profile_bloc.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.started() = _Started;
  const factory UserProfileEvent.onNameValueSubmitted(
      {required String firstName,
      required String lastName}) = _OnNameValueSubmitted;
  const factory UserProfileEvent.onPhoneNumberSubmitted({
    required String phoneNumber,
  }) = _OnPhoneNumberSubmitted;
  const factory UserProfileEvent.onGenderValueSubmitted(
      {required String gender}) = _OnGenderValueSubmitted;
  const factory UserProfileEvent.onWeightValueSubmitted(
      {required String weight}) = _OnWeightValueSubmitted;
  const factory UserProfileEvent.onHeightValueSubmitted(
      {required String feet, required String inch}) = _OnHeightValueSubmitted;
  const factory UserProfileEvent.onAgeValueSubmitted({
    required String dob,
  }) = _OnAgeValueSubmitted;
  const factory UserProfileEvent.onBMICaculationScreenReviewed() =
      _OnBMICaculationScreenReviewed;
  const factory UserProfileEvent.onPhysicalActivitySelected({
    required String physicalActivity,
  }) = _OnPhysicalActivitySelected;
  const factory UserProfileEvent.onFormCompletedAndSubmitted(
      {required UserDetails userDetails}) = _OnFormCompletedAndSubmitted;
}
