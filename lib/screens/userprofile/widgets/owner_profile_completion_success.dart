import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../config/app_navigation.dart';
import '../../../config/constant/app_constants.dart';
import '../../../config/constant/assets_constants.dart';
import '../../widgets/next_button.dart';
import '../user_profile_constants.dart';

class OwnerProfileCompletionSuccess extends StatelessWidget {
  const OwnerProfileCompletionSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Lottie.asset(
          userProfileSuccessAnimation,
          repeat: false,
          height: 300,
          width: 300,
        ),
        const Text(
          "We're Set to Go!",
          style: TextStyle(
            color: Colors.black,
            fontFamily: fontNameLato,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "User profile Successfully Saved!",
          style: descriptionStyle,
        ),
        const SizedBox(
          height: 48,
        ),
        const Text(
          "Let's Start the Journey",
          style: completeProfileText,
        ),
        NextButton(
          isExtendedButton: false,
          onPressed: () => jumpToHomeScreen(context),
          btnName: "Finish",
        ),
      ],
    );
  }
}
