import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/exception/connection_exception.dart';
import '../../../domain/exception/qunto_exceptions.dart';
import '../../../domain/join_gym/datastore/join_gym_datastore.dart';
import '../../../domain/join_gym/repository/join_gym_repository.dart';
import '../datastore/models/join_gym_response.dart';

@LazySingleton(as: JoinGymRepository)
class JoinGymRepositoryImpl extends JoinGymRepository {
  final JoinGymDataStore joinGymDataStore;

  JoinGymRepositoryImpl(this.joinGymDataStore);
  @override
  Future<Either<QuntoExceptions, JoinGymResponse>> joinGym(
      {required String gymId}) async {
    try {
      final result = await joinGymDataStore.joinGym(gymId: gymId);
      if (result.status) {
        return Right(result);
      } else {
        return Right(result);
      }
    } on ConnectionException catch (_) {
      return const Left(QuntoExceptions.noConnection());
    } on Exception catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 503) {
          return const Left(QuntoExceptions.detailsNotFound());
        }
      }
      return const Left(QuntoExceptions.unKnownError());
    }
  }
}
