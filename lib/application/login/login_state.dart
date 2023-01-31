part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.error({required String message}) = _Error;
  const factory LoginState.successWithUserProfileNotCreated() =
      _SuccessWithUserProfileNotCreated;

  const factory LoginState.successWithUserProfileCreated() =
      _SuccessWithUserProfileCreated;
}
