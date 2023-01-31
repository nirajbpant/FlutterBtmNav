part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.nameForm() = _NameForm;
  const factory UserProfileState.phoneForm() = _PhoneForm;
  const factory UserProfileState.genderForm() = _GenderForm;
  const factory UserProfileState.weightForm() = _WeightForm;
  const factory UserProfileState.heightForm() = _HeightForm;
  const factory UserProfileState.ageForm() = _AgeForm;
  const factory UserProfileState.bmiForm() = _BmiForm;
  const factory UserProfileState.physicalActivityForm() = _PhysicalActivityForm;
  const factory UserProfileState.selectGoals() = _SelectGoals;
  const factory UserProfileState.formSubmittedLoading() = _FormSubmittedLoading;
  const factory UserProfileState.formSubmittedSuccess() = _FormSubmittedSuccess;
  const factory UserProfileState.formSubmittedError() = _FormSubmittedError;
}
