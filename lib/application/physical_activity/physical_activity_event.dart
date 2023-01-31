part of 'physical_activity_bloc.dart';

@freezed
class PhysicalActivityEvent with _$PhysicalActivityEvent {
  const factory PhysicalActivityEvent.inactiveSelected() = _InActiveSelected;
  const factory PhysicalActivityEvent.lightlyActiveSelected() =
      _LightlyActiveSelected;
  const factory PhysicalActivityEvent.moderatelyActiveSelected() =
      _ModeratelyActiveSelected;
  const factory PhysicalActivityEvent.veryActiveSelected() =
      _VeryActiveSelected;
  const factory PhysicalActivityEvent.extremelyActiveSelected() =
      _ExtremelyActiveSelected;
}
