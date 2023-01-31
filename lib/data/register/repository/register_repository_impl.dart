import 'package:dartz/dartz.dart';
import 'package:fitness_user/domain/register/repository/register_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/register/datastore/register_datastore.dart';

@LazySingleton(as: IRegisterRepository)
class RegisterRepository implements IRegisterRepository {
  final IRegisterDataStore registerDataStore;

  RegisterRepository(this.registerDataStore);
  @override
  Future<Either<Exception, Unit>> register(
      String email, String password) async {
    try {
      final result = await registerDataStore.register(email, password);
      return const Right(unit);
    } on Exception catch (exception) {
      return Left(exception);
    }
  }
}
