import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../application/splash/splash_bloc.dart';
import '../../config/app_navigation.dart';
import '../../config/constant/assets_constants.dart';
import '../../injectable/injection.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController lottieController;
  bool isAnimationComplete = false;

  @override
  void initState() {
    super.initState();

    lottieController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 0),
    );

    lottieController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isAnimationComplete = true;
        });
      }
    });
  }

  @override
  void dispose() {
    lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: !isAnimationComplete
          ? Center(
              child: Lottie.asset(bootAnimation,
                  height: 400,
                  width: 400,
                  controller: lottieController, onLoaded: (composition) {
                lottieController.forward();
              }),
            )
          : BlocProvider<SplashBloc>(
              create: (context) => getIt<SplashBloc>(),
              child: BlocListener<SplashBloc, SplashState>(
                listener: (context, state) {
                  state.when(
                    loading: () {},
                    userExistsWithProfileNotSetup: () =>
                        navigateToCompleteUserProfile(
                      context,
                    ),
                    userExistsWithAllDetailsCompleted: () =>
                        navigateToHomeScreen(context),
                    userDoesntExist: () => _onUserDoesntExist(context),
                  );
                },
                child: Center(
                  child: SizedBox(
                    child: Image.asset('assets/logo/qunto_splash_logo.png'),
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
    );
  }

  void _onUserDoesntExist(BuildContext context) {
    jumpToOnBoardingScreen(context);
  }

  void navigateToCompleteUserProfile(
    BuildContext context,
  ) {
    jumpToCompleteUserProfileScreen(
      context: context,
    );
  }

  void navigateToHomeScreen(
    BuildContext context,
  ) {
    jumpToHomeScreen(context);
  }
}
