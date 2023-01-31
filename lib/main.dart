import 'package:fitness_user/config/navigation/global_navigation_key.dart';

import '../screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'config/app_theme.dart';
import 'config/navigation/config_route.dart';
import 'injectable/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const Qunto());
}

class Qunto extends StatelessWidget {
  const Qunto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qunto',
      theme: AppTheme.appTheme,
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const SplashScreen(),
      navigatorKey: GlobalNavigationKey().navigatorKey,
    );
  }
}
