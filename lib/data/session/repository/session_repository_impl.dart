import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/exception/connection_exception.dart';
import '../../../domain/exception/qunto_exceptions.dart';
import '../../../domain/session/datastore/session_datastore.dart';
import '../../../domain/session/repository/session_repository.dart';
import '../managers/session_preference_manager.dart';

@LazySingleton(as: ISessionRepository)
class SessionRepository implements ISessionRepository {
  final SessionPreferenceManager sessionPreferenceManager;
  final ISessionDataStore sessionDataStore;

  SessionRepository(this.sessionPreferenceManager, this.sessionDataStore);

  @override
  Future<String?> get accessToken async => sessionPreferenceManager.accessToken;

  @override
  Future<String?> get refreshToken async =>
      sessionPreferenceManager.refreshToken;

  @override
  Future<Either<QuntoExceptions, Unit>> login(
      String email, String password) async {
    try {
      final result = await sessionDataStore.login(email, password);
      sessionPreferenceManager.accessToken = result.payload!.data.acccessToken;
      sessionPreferenceManager.refreshToken = result.payload!.data.refreshToken;
      return const Right(unit);
    } on ConnectionException catch (_) {
      return const Left(QuntoExceptions.noConnection());
    } on Exception catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 401) {
          return const Left(QuntoExceptions.detailsNotFound());
        }
      }
      return const Left(QuntoExceptions.unKnownError());
    }
  }

  @override
  Future<Either<Exception, Unit>> logout() async {
    await sessionDataStore
        .logout()
        .then((_) => sessionPreferenceManager.clearData());

    return const Right(unit);
  }

  @override
  Future<void> setNewAccessToken(String accessToken) async {
    sessionPreferenceManager.accessToken = accessToken;
  }

  @override
  Future<void> setNewRefreshToken(String refreshToken) async {
    sessionPreferenceManager.refreshToken = refreshToken;
  }
}
