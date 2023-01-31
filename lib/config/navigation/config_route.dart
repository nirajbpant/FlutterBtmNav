import 'package:fitness_user/data/get_gym_details/datastore/models/gym_details.dart';
import 'package:flutter/material.dart';

import '../../data/user_details/datastore/models/user_details.dart';
import '../../screens/home/gym_mode/gym_mode_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/join_gym/join_a_gym.dart';
import '../../screens/join_gym/widgets/gym_confirmation_page.dart';
import '../../screens/onboarding/onboarding_screen.dart';
import '../../screens/splash/splash_screen.dart';
import '../../screens/userprofile/set_goals_screen.dart';
import '../../screens/userprofile/user_details_screen.dart';
import '../../screens/widgets/error_404_screen.dart';
import '../constant/app_constants.dart';
import 'custom_page_transition.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case valSplashScreen:
        return BouncePageRoute(
          alignment: Alignment.center,
          animationDuration: const Duration(milliseconds: 600),
          curve: Curves.easeOutCirc,
          child: const SplashScreen(),
        );
      case valHomeScreen:
        return BouncePageRoute(
          alignment: Alignment.center,
          animationDuration: const Duration(milliseconds: 600),
          curve: Curves.easeOutCirc,
          child: const HomeScreen(),
        );
      case valOnboardingScreen:
        return BouncePageRoute(
          alignment: Alignment.center,
          animationDuration: const Duration(milliseconds: 600),
          curve: Curves.easeOutCirc,
          child: const OnboardingScreen(),
        );
      case valCompleteUserProfileScreen:
        return BouncePageRoute(
          alignment: Alignment.center,
          animationDuration: const Duration(milliseconds: 600),
          curve: Curves.easeOutCirc,
          child: SetGoalsScreen(
            userDetails: arguments as UserDetails,
          ),
        );
      case valUserProfileDetailsScreen:
        return SlideTransitionPageRoute(
          direction: AxisDirection.right,
          child: const UserProfileDetailScreen(),
          animationDuration: const Duration(milliseconds: 200),
        );
      case valGymModeScreen:
        return SlideTransitionPageRoute(
          direction: AxisDirection.right,
          child: const GymModeScreen(),
          animationDuration: const Duration(milliseconds: 200),
        );
      case valJoinAGymScreen:
        return SlideTransitionPageRoute(
          direction: AxisDirection.down,
          child: const JoinAGym(),
          animationDuration: const Duration(milliseconds: 200),
        );
      case valJoinAGymConfirmationScreen:
        return MaterialPageRoute(builder: (BuildContext context) {
          return GymConfirmationPage(
            gymDetails: arguments as GymDetails,
          );
        });
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (error) {
        return const Error404Screen(
          errorText: 'Error 404',
        );
      },
    );
  }
}
