import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/logger/log.dart';
import '../../domain/app_config/repository/app_config_repository.dart';
import '../../domain/exception/qunto_exceptions.dart';
import '../../domain/session/repository/session_repository.dart';
import '../../domain/user_details/repository/user_details_repository.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ISessionRepository _sessionRepository;
  final IUserDetailsRepository userDetailsRepository;
  final IAppConfigRepository appConfigRepository;
  SplashBloc(
    this._sessionRepository,
    this.userDetailsRepository,
    this.appConfigRepository,
  ) : super(const _Loading()) {
    on<SplashEvent>((event, emit) async {
      await event.when(started: () async {
        final accessToken = await _sessionRepository.accessToken;
        Log.d("Access Token: ${accessToken.toString()}");
        if (accessToken != null && accessToken != "") {
          final data = await userDetailsRepository.getUserDetails();
          data.fold(
            (exception) {
              if (exception == const QuntoExceptions.userProfileNotCreated()) {
                emit(const SplashState.userExistsWithProfileNotSetup());
              } else {
                emit(const SplashState.userDoesntExist());
              }
            },
            (data) {
              emit(const SplashState.userExistsWithAllDetailsCompleted());
            },
          );
        } else {
          emit(
            const SplashState.userDoesntExist(),
          );
        }
      });
    });
    add(const SplashEvent.started());
  }
}
