part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.initial() = _Initial;
  const factory BottomNavigationState.currentIndexChanged(int index) =
      _CurrentIndexChanged;
  const factory BottomNavigationState.homePageLoaded() = _HomePageLoaded;
  const factory BottomNavigationState.gymPageLoaded() = _GymPageLoaded;
  const factory BottomNavigationState.gymModePageLoaded() = _GymModePageLoaded;
  const factory BottomNavigationState.bodyPageLoaded() = _BodyPageLoaded;
  const factory BottomNavigationState.dietPageLoaded() = _DietPageLoaded;
}
