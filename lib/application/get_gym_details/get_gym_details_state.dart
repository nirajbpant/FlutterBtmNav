part of 'get_gym_details_bloc.dart';

@freezed
class GetGymDetailsState with _$GetGymDetailsState {
  const factory GetGymDetailsState.initial() = _Initial;
  const factory GetGymDetailsState.loading() = _Loading;
  const factory GetGymDetailsState.success({required GymDetails gymDetails}) =
      _Success;
  const factory GetGymDetailsState.failure({required String errorMsg}) =
      _Failure;
}
