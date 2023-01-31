import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/session/repository/session_repository.dart';

part 'log_out_cubit.freezed.dart';
part 'log_out_state.dart';

@injectable
class LogOutCubit extends Cubit<LogOutState> {
  final ISessionRepository _sessionRepository;
  LogOutCubit(this._sessionRepository) : super(const LogOutState.initial());

  Future<void> logout() async {
    final result = await _sessionRepository.logout();
    result.fold(
      (exception) => emit(const LogOutState.error()),
      (_) => emit(const LogOutState.success()),
    );
  }
}
