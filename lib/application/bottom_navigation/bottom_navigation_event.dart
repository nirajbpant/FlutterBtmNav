part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.started() = _Started;
  const factory BottomNavigationEvent.pageTapped(int index) = _PageTapped;
}
