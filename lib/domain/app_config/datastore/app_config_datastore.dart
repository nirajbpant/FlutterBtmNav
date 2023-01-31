import 'package:fitness_user/data/app_config/datastore/model/app_config_response.dart';

abstract class IAppConfigDataStore {
  Future<AppConfigResponse> getAppConfig();
}
