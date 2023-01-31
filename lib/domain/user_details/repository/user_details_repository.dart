import 'package:dartz/dartz.dart';

import '../../../data/user_details/datastore/models/user_details.dart';
import '../../../data/user_details/datastore/models/user_profile_response.dart';
import '../../exception/qunto_exceptions.dart';

abstract class IUserDetailsRepository {
  Future<Either<QuntoExceptions, UserProfileResponse>> getUserDetails();
  Future<Either<QuntoExceptions, Unit>> setUserDetails(UserDetails userDetails);
  Future<Either<QuntoExceptions, Unit>> saveUserDetails(
      UserDetails userDetails);
}
