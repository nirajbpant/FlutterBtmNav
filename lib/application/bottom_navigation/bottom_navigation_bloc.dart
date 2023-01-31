import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';
part 'bottom_navigation_bloc.freezed.dart';

@singleton
class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  int currentIndex = 0;
  BottomNavigationBloc() : super(const _Initial()) {
    on<BottomNavigationEvent>((event, emit) {
      event.when(
          started: () => add(BottomNavigationEvent.pageTapped(currentIndex)),
          pageTapped: (index) {
            currentIndex = index;
            emit(
              BottomNavigationState.currentIndexChanged(index),
            );
            if (currentIndex == 0) {
              emit(const BottomNavigationState.homePageLoaded());
            }
            if (currentIndex == 1) {
              emit(const BottomNavigationState.gymPageLoaded());
            }
            if (currentIndex == 2) {
              emit(const BottomNavigationState.gymModePageLoaded());
            }
            if (currentIndex == 3) {
              emit(const BottomNavigationState.bodyPageLoaded());
            }
            if (currentIndex == 4) {
              emit(const BottomNavigationState.dietPageLoaded());
            }
          });
    });
    add(const BottomNavigationEvent.started());
  }
}
