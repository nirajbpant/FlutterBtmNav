part of 'join_gym_cubit.dart';

@freezed
class JoinGymState with _$JoinGymState {
  const factory JoinGymState.initial() = _Initial;
  const factory JoinGymState.gymRequested() = _GymRequested;
  const factory JoinGymState.gymJoined() = _GymJoined;
  const factory JoinGymState.gymNotJoined() = _GymNotJoined;
}
