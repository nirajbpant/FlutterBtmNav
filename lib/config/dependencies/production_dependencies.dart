import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

import '../../core/logger/log.dart';
import 'dependencies.dart';
import 'environment_config.dart';

@LazySingleton(as: Dependencies, env: [Environment.prod])
class ProductionDependenciesImpl extends Dependencies {
  @override
  Future<void> plantLogTrees() async {}

  @override
  Future<void> initializeEnv() async {
    //Todo add production envrionment
    await EnvironmentConfig.development;
    Log.d("Environment: ${dotenv.env}");
  }
}
