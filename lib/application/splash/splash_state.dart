part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loading() = _Loading;
  const factory SplashState.userExistsWithProfileNotSetup() =
      _UserExistsWithProfileNotSetup;
  const factory SplashState.userExistsWithAllDetailsCompleted() =
      _UserExistsWithAllDetailsCompleted;

  const factory SplashState.userDoesntExist() = _UserDoesntExists;
}
