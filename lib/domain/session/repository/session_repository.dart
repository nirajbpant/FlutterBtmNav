import 'package:dartz/dartz.dart';
import 'package:fitness_user/domain/exception/qunto_exceptions.dart';

abstract class ISessionRepository {
  Future<String?> get accessToken;
  Future<String?> get refreshToken;
  Future<void> setNewAccessToken(String accessToken);
  Future<void> setNewRefreshToken(String refreshToken);
  Future<Either<QuntoExceptions, Unit>> login(String email, String password);

  Future<Either<Exception, Unit>> logout();
}
