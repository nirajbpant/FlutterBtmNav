import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'datastore/model/app_config_response.dart';

@injectable
class AppConfigApi {
  final Dio dio;

  AppConfigApi(this.dio);

  Future<AppConfigResponse> getAppConfig() async {
    final response = await dio.get(
      '/api/v1/app/getAppConfig',
    );
    final value = AppConfigResponse.fromJson(response.data);
    return value;
  }
}
