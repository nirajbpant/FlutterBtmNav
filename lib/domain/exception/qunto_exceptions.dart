import 'package:freezed_annotation/freezed_annotation.dart';

part 'qunto_exceptions.freezed.dart';

@freezed
abstract class QuntoExceptions with _$QuntoExceptions {
  const factory QuntoExceptions.noConnection() = _NoConnection;
  const factory QuntoExceptions.detailsNotFound() = _InvalidUsername;
  const factory QuntoExceptions.userAlreadyExists() = _UserAlreadyExists;
  const factory QuntoExceptions.userProfileNotCreated() =
      _UserProfileNotCreated;
  const factory QuntoExceptions.unKnownError() = _UnKnownError;

  static String getErrorMessage(QuntoExceptions exceptions) {
    return exceptions.when(
      noConnection: () {
        return "No Internet Connection";
      },
      detailsNotFound: () {
        return "Details Not Found";
      },
      userAlreadyExists: () {
        return "User Already Exists";
      },
      userProfileNotCreated: () {
        return "User Profile Not Created";
      },
      unKnownError: () {
        return "Unknown Error";
      },
    );
  }
}
