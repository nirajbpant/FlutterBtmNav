part of 'log_out_cubit.dart';

@freezed
class LogOutState with _$LogOutState {
  const factory LogOutState.initial() = _Initial;
  const factory LogOutState.loading() = _Loading;
  const factory LogOutState.success() = _Success;
  const factory LogOutState.error() = _Error;
}
