import 'package:dartz/dartz.dart';
import 'package:fitness_user/data/get_gym_details/datastore/models/get_gym_details_response.dart';
import 'package:fitness_user/domain/exception/qunto_exceptions.dart';

abstract class GetGymDetailsRepository {
  Future<Either<QuntoExceptions, GetGymDetailsResponse>> getGymDetails(
      {required String gymId});
}
