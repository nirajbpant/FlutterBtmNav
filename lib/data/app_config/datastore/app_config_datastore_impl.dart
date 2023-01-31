import 'package:fitness_user/data/app_config/app_config_api.dart';
import 'package:fitness_user/data/app_config/datastore/model/app_config_response.dart';
import 'package:fitness_user/domain/app_config/datastore/app_config_datastore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAppConfigDataStore)
class AppConfigDataStoreImpl extends IAppConfigDataStore {
  final AppConfigApi appConfigApi;

  AppConfigDataStoreImpl(this.appConfigApi);

  @override
  Future<AppConfigResponse> getAppConfig() {
    final response = appConfigApi.getAppConfig();
    return response;
  }
}
