import 'package:dartz/dartz.dart';

abstract class IRegisterRepository {
  Future<Either<Exception, Unit>> register(String email, String password);
}
