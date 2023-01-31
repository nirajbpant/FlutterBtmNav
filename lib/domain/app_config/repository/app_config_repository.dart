import 'package:dartz/dartz.dart';

import '../../../data/app_config/datastore/model/app_config_response.dart';

abstract class IAppConfigRepository {
  Future<Either<Exception, AppConfigResponse>> getAppConfig();
}
