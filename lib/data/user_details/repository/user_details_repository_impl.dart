import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/exception/connection_exception.dart';
import '../../../domain/exception/qunto_exceptions.dart';
import '../../../domain/user_details/datastore/user_details_datastore.dart';
import '../../../domain/user_details/repository/user_details_repository.dart';
import '../../session/managers/session_preference_manager.dart';
import '../datastore/models/user_details.dart';
import '../datastore/models/user_profile_response.dart';

@LazySingleton(as: IUserDetailsRepository)
class UserDetailRepositoryImpl implements IUserDetailsRepository {
  final IUserDetailsDataStore userDetailsDataStore;
  final SessionPreferenceManager sessionPreferenceManager;
  UserDetailRepositoryImpl(
    this.userDetailsDataStore,
    this.sessionPreferenceManager,
  );
  @override
  Future<Either<QuntoExceptions, UserProfileResponse>> getUserDetails() async {
    try {
      final details = await userDetailsDataStore.getUserDetails();
      sessionPreferenceManager.isUserProfileEmpty = false;
      return Right(details);
    } on ConnectionException catch (_) {
      return const Left(QuntoExceptions.noConnection());
    } on Exception catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 503) {
          sessionPreferenceManager.isUserProfileEmpty = true;
          return const Left(QuntoExceptions.userProfileNotCreated());
        }
      }
      return const Left(QuntoExceptions.unKnownError());
    }
  }

  @override
  Future<Either<QuntoExceptions, Unit>> setUserDetails(
      UserDetails userDetails) async {
    await userDetailsDataStore.setUserDetails(userDetails);
    try {
      return const Right(unit);
    } on ConnectionException catch (_) {
      return const Left(QuntoExceptions.noConnection());
    } catch (_) {
      return const Left(QuntoExceptions.unKnownError());
    }
  }

  @override
  Future<Either<QuntoExceptions, Unit>> saveUserDetails(
      UserDetails userDetails) async {
    try {
      await userDetailsDataStore.saveUserDetails(userDetails);
      return const Right(unit);
    } on ConnectionException catch (_) {
      return const Left(QuntoExceptions.noConnection());
    } catch (_) {
      return const Left(QuntoExceptions.unKnownError());
    }
  }
}
