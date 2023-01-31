import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'select_goal_bloc.freezed.dart';
part 'select_goal_event.dart';
part 'select_goal_state.dart';

@injectable
class SelectGoalBloc extends Bloc<SelectGoalEvent, SelectGoalState> {
  SelectGoalBloc() : super(const _GeneralFitness()) {
    on<SelectGoalEvent>((event, emit) {
      event.map(
        generalFitnessSelected: (_) {
          emit(const SelectGoalState.generalFitness());
        },
        strengthTrainingSelected: (_) {
          emit(const SelectGoalState.strengthTraining());
        },
        muscleToneSelected: (_) {
          emit(const SelectGoalState.muscleTone());
        },
        bodybuildingSelected: (_) {
          emit(const SelectGoalState.bodybuilding());
        },
        powerliftingSelected: (_) {
          emit(const SelectGoalState.powerLifting());
        },
      );
    });
  }
}
