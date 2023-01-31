import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/exception/connection_exception.dart';
import '../../../domain/exception/qunto_exceptions.dart';
import '../../../domain/get_gym_details/datastore/get_gym_details_datastore.dart';
import '../../../domain/get_gym_details/repository/get_gym_details_repository.dart';
import '../datastore/models/get_gym_details_response.dart';

@LazySingleton(as: GetGymDetailsRepository)
class GetGymDetailsRepositoryImpl extends GetGymDetailsRepository {
  final GetGymDetailsDataStore getGymDetailsDataStore;

  GetGymDetailsRepositoryImpl(this.getGymDetailsDataStore);
  @override
  Future<Either<QuntoExceptions, GetGymDetailsResponse>> getGymDetails(
      {required String gymId}) async {
    try {
      final result = await getGymDetailsDataStore.getGymDetails(gymId: gymId);
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
