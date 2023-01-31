part of 'request_gym_admission_bloc.dart';

@freezed
class RequestGymAdmissionEvent with _$RequestGymAdmissionEvent {
  const factory RequestGymAdmissionEvent.requestGymAdmission(
      {required String gymId}) = _RequestGymAdmission;
}
