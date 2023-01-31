import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../config/dependencies/dependencies.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async {
  await $initGetIt(
    getIt,
    environment: kReleaseMode ? Environment.prod : Environment.dev,
  );
  getIt<Dependencies>();
}
