part of 'select_goal_bloc.dart';

@freezed
class SelectGoalEvent with _$SelectGoalEvent {
  const factory SelectGoalEvent.generalFitnessSelected() =
      _GeneralFitnessSelected;
  const factory SelectGoalEvent.strengthTrainingSelected() =
      _StrengthTrainingSelected;
  const factory SelectGoalEvent.muscleToneSelected() = _MuscleToneSelected;
  const factory SelectGoalEvent.bodybuildingSelected() = _BodybuildingSelected;
  const factory SelectGoalEvent.powerliftingSelected() = _PowerliftingSelected;
}
