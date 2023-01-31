import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/app_config/repository/app_config_repository.dart';
import '../../domain/exception/qunto_exceptions.dart';
import '../../domain/session/repository/session_repository.dart';
import '../../domain/user_details/repository/user_details_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ISessionRepository repository;
  final IUserDetailsRepository userDetailsRepository;
  final IAppConfigRepository appConfigRepository;
  LoginBloc(
      this.repository, this.userDetailsRepository, this.appConfigRepository)
      : super(const _Initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        login: (email, password) async => _onLogin(emit, email, password),
      );
    });
  }

  Future<void> _onLogin(
    Emitter<LoginState> emit,
    String email,
    String password,
  ) async {
    emit(const LoginState.loading());
    final result = await repository.login(email, password);

    await result.fold((exception) {
      emit(LoginState.error(message: exception.toString()));
    }, (unit) async {
      final data = await userDetailsRepository.getUserDetails();
      data.fold(
        (exception) {
          String errorMsg = QuntoExceptions.getErrorMessage(exception);
          if (exception == const QuntoExceptions.noConnection()) {
            emit(LoginState.error(message: errorMsg));
          } else if (exception ==
              const QuntoExceptions.userProfileNotCreated()) {
            emit(const LoginState.successWithUserProfileNotCreated());
          } else {
            emit(LoginState.error(message: errorMsg));
          }
        },
        (data) => emit(
          const LoginState.successWithUserProfileCreated(),
        ),
      );
    });
  }
}
