import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/app_config/datastore/app_config_datastore.dart';
import '../../../domain/app_config/repository/app_config_repository.dart';
import '../datastore/model/app_config_response.dart';

@LazySingleton(as: IAppConfigRepository)
class AppConfigRepositoryImpl implements IAppConfigRepository {
  final IAppConfigDataStore appConfigDataStore;

  AppConfigRepositoryImpl(this.appConfigDataStore);

  @override
  Future<Either<Exception, AppConfigResponse>> getAppConfig() async {
    try {
      final response = await appConfigDataStore.getAppConfig();
      return Right(response);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
