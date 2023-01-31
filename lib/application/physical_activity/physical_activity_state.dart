part of 'physical_activity_bloc.dart';

@freezed
class PhysicalActivityState with _$PhysicalActivityState {
  const factory PhysicalActivityState.inactive() = _Inactive;
  const factory PhysicalActivityState.lightlyActive() = _LightlyActive;
  const factory PhysicalActivityState.moderatelyActive() = _ModeratelyActive;
  const factory PhysicalActivityState.veryActive() = _VeryActive;
  const factory PhysicalActivityState.extremelyActive() = _ExtremelyActive;
}
