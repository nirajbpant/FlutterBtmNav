part of 'get_gym_details_bloc.dart';

@freezed
class GetGymDetailsEvent with _$GetGymDetailsEvent {
  const factory GetGymDetailsEvent.getGymDetails({required String gymId}) =
      _GetGymDetails;
}
