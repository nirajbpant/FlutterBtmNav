import 'package:dartz/dartz.dart';
import 'package:fitness_user/data/get_notices/datastore/models/get_notices_response.dart';
import 'package:fitness_user/domain/exception/qunto_exceptions.dart';

abstract class IGetNoticesRepository {
  Future<Either<QuntoExceptions, GetNoticesResponse>> getNotices();
}
