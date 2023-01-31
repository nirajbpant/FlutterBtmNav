import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

import '../../core/logger/debug_tree.dart';
import '../../core/logger/log.dart';
import 'dependencies.dart';
import 'environment_config.dart';

@LazySingleton(as: Dependencies, env: [Environment.dev])
class DevelopmentDependenciesImpl extends Dependencies {
  @override
  Future<void> plantLogTrees() async {
    Log.plantTree(DebugTree());
  }

  @override
  Future<void> initializeEnv() async {
    await EnvironmentConfig.development;
    Log.d("Environment: ${dotenv.env}");
  }
}
