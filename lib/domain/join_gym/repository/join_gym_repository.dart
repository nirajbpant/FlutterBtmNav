import 'package:dartz/dartz.dart';

import '../../../data/join_gym/datastore/models/join_gym_response.dart';
import '../../exception/qunto_exceptions.dart';

abstract class JoinGymRepository {
  Future<Either<QuntoExceptions, JoinGymResponse>> joinGym(
      {required String gymId});
}
