part of 'request_gym_admission_bloc.dart';

@freezed
class RequestGymAdmissionState with _$RequestGymAdmissionState {
  const factory RequestGymAdmissionState.initial() = _Initial;
  const factory RequestGymAdmissionState.loading() = _Loading;
  const factory RequestGymAdmissionState.success(
      {required String admissionInfo}) = _Success;
  const factory RequestGymAdmissionState.failure({required String errorMsg}) =
      _Failure;
}
