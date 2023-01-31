import 'package:dio/dio.dart';
import 'package:fitness_user/domain/exception/connection_exception.dart';
import 'package:fitness_user/domain/exception/qunto_exceptions.dart';
import 'package:fitness_user/data/get_notices/datastore/models/get_notices_response.dart';
import 'package:dartz/dartz.dart';
import 'package:fitness_user/domain/get_notices/datastore/get_notices_datastore.dart';
import 'package:fitness_user/domain/get_notices/repository/get_notices_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGetNoticesRepository)
class GetNoticesRepositoryImpl extends IGetNoticesRepository {
  final IGetNoticesDataStore noticesDataStore;

  GetNoticesRepositoryImpl(this.noticesDataStore);
  @override
  Future<Either<QuntoExceptions, GetNoticesResponse>> getNotices() async {
    try {
      final result = await noticesDataStore.getNotices();
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
