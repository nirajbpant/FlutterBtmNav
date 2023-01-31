part of 'get_notices_bloc.dart';

@freezed
class GetNoticesState with _$GetNoticesState {
  const factory GetNoticesState.initial() = _Initial;
  const factory GetNoticesState.loading() = _Loading;
  const factory GetNoticesState.success({required List<GymNotice> notices}) =
      _Success;
  const factory GetNoticesState.failure({required String errorMsg}) = _Failure;
}
