import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'physical_activity_bloc.freezed.dart';
part 'physical_activity_event.dart';
part 'physical_activity_state.dart';

@injectable
class PhysicalActivityBloc
    extends Bloc<PhysicalActivityEvent, PhysicalActivityState> {
  PhysicalActivityBloc() : super(const _Inactive()) {
    on<PhysicalActivityEvent>((event, emit) {
      event.map(
        inactiveSelected: (_) {
          emit(const PhysicalActivityState.inactive());
        },
        lightlyActiveSelected: (_) {
          emit(const PhysicalActivityState.lightlyActive());
        },
        moderatelyActiveSelected: (_) {
          emit(const PhysicalActivityState.moderatelyActive());
        },
        veryActiveSelected: (_) {
          emit(const PhysicalActivityState.veryActive());
        },
        extremelyActiveSelected: (_) {
          emit(const PhysicalActivityState.extremelyActive());
        },
      );
    });
  }
}
