import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/session/managers/session_preference_manager.dart';
import '../../data/user_details/datastore/models/user_details.dart';
import '../../domain/user_details/repository/user_details_repository.dart';

part 'user_profile_bloc.freezed.dart';
part 'user_profile_event.dart';
part 'user_profile_state.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final IUserDetailsRepository userDetailsRepository;
  final SessionPreferenceManager sessionPreferenceManager;
  UserProfileBloc(this.userDetailsRepository, this.sessionPreferenceManager)
      : super(const _NameForm()) {
    on<UserProfileEvent>((event, emit) async {
      await event.when(
        started: () {},
        onNameValueSubmitted: (fistName, lastname) {
          emit(const UserProfileState.phoneForm());
        },
        onPhoneNumberSubmitted: (String phoneNumber) {
          emit(const UserProfileState.genderForm());
        },
        onGenderValueSubmitted: (gender) {
          emit(const UserProfileState.weightForm());
        },
        onWeightValueSubmitted: (weight) {
          emit(const UserProfileState.heightForm());
        },
        onHeightValueSubmitted: (feet, inch) {
          emit(const UserProfileState.ageForm());
        },
        onAgeValueSubmitted: (dob) {
          emit(const UserProfileState.bmiForm());
        },
        onBMICaculationScreenReviewed: () {
          emit(const UserProfileState.physicalActivityForm());
        },
        onPhysicalActivitySelected: (activityLevel) {
          emit(const UserProfileState.selectGoals());
        },
        onFormCompletedAndSubmitted: (UserDetails userDetails) async {
          emit(const UserProfileState.formSubmittedLoading());
          bool isUserProfileEmpty = sessionPreferenceManager.isUserProfileEmpty;
          isUserProfileEmpty
              ? await userDetailsRepository.saveUserDetails(userDetails).then(
                    (value) => value.fold(
                      (exception) =>
                          emit(const UserProfileState.formSubmittedError()),
                      (unit) {
                        sessionPreferenceManager.isUserProfileEmpty = false;
                        emit(
                          const UserProfileState.formSubmittedSuccess(),
                        );
                      },
                    ),
                  )
              : await userDetailsRepository.setUserDetails(userDetails).then(
                    (value) => value.fold(
                      (exception) =>
                          emit(const UserProfileState.formSubmittedError()),
                      (unit) {
                        sessionPreferenceManager.isUserProfileEmpty = false;
                        emit(
                          const UserProfileState.formSubmittedSuccess(),
                        );
                      },
                    ),
                  );
        },
      );
    });
    add(const UserProfileEvent.started());
  }
}
