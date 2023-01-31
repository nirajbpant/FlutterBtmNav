import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/session/managers/session_preference_manager.dart';

part 'join_gym_cubit.freezed.dart';
part 'join_gym_state.dart';

@injectable
class JoinGymCubit extends Cubit<JoinGymState> {
  final SessionPreferenceManager sessionPreferenceManager;
  JoinGymCubit(this.sessionPreferenceManager)
      : super(const JoinGymState.initial());

  Future<void> getGymJoinInfo() async {
    final bool hasJoinedAGym = sessionPreferenceManager.hasJoinedGym;
    if (hasJoinedAGym) {
      emit(const JoinGymState.gymJoined());
    } else {
      emit(const JoinGymState.gymNotJoined());
    }
  }
}
