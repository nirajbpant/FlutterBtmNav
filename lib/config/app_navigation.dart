import 'package:fitness_user/data/get_gym_details/datastore/models/gym_details.dart';
import 'package:flutter/material.dart';

import '../data/user_details/datastore/models/user_details.dart';
import '../screens/join_gym/widgets/gym_pending_request_screen.dart';
import '../screens/login/login_form.dart';
import '../screens/register/register_form.dart';
import 'constant/app_constants.dart';

void jumpToLoginScreen({
  required BuildContext context,
}) {
  showModalBottomSheet<dynamic>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: const LoginScreenForm(),
      );
    },
  );
}

void jumpToRegsiterScreen({
  required BuildContext context,
}) {
  showModalBottomSheet<dynamic>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: const RegisterScreenForm(),
      );
    },
  );
}

void popUpGymPendingRequest({
  required BuildContext context,
}) {
  showModalBottomSheet<dynamic>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(60),
        topRight: Radius.circular(60),
      ),
    ),
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: const GymPendingRequestScreen(),
      );
    },
  );
}

void jumpToSplashScreen(BuildContext context) {
  Navigator.of(context).pushNamedAndRemoveUntil(valSplashScreen, (_) => false);
}

void jumpToOnBoardingScreen(BuildContext context) {
  Navigator.of(context)
      .pushNamedAndRemoveUntil(valOnboardingScreen, (_) => false);
}

void jumpToHomeScreen(BuildContext context) {
  Navigator.of(context).pushNamedAndRemoveUntil(valHomeScreen, (_) => false);
}

void jumpToCompleteUserProfileScreen({
  required BuildContext context,
}) {
  Navigator.of(context).pushNamedAndRemoveUntil(
    valCompleteUserProfileScreen,
    (_) => false,
  );
}

void jumpToUserProfileDetailsScreen({
  required BuildContext context,
  required UserDetails userDetails,
}) {
  Navigator.of(context).pushNamedAndRemoveUntil(
    valUserProfileDetailsScreen,
    (_) => false,
    arguments: userDetails,
  );
}

void jumpToGymModeScreen({
  required BuildContext context,
}) {
  Navigator.of(context).pushNamed(
    valGymModeScreen,
  );
}

void jumpToJoinAGymScreen({required BuildContext context}) {
  Navigator.of(context).pushNamed(valJoinAGymScreen);
}

void jumpToGymConfirmationScreen(
    {required BuildContext context, required GymDetails gymDetails}) {
  Navigator.of(context)
      .pushNamed(valJoinAGymConfirmationScreen, arguments: gymDetails);
}
