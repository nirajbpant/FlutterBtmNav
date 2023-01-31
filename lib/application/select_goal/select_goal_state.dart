part of 'select_goal_bloc.dart';

@freezed
class SelectGoalState with _$SelectGoalState {
  const factory SelectGoalState.generalFitness() = _GeneralFitness;
  const factory SelectGoalState.strengthTraining() = _StrengthTraining;
  const factory SelectGoalState.muscleTone() = _MuscleTone;
  const factory SelectGoalState.bodybuilding() = _BodyBuilding;
  const factory SelectGoalState.powerLifting() = _PowerLifting;
}
