import 'package:flutter/material.dart';

import '../../config/app_navigation.dart';
import '../../config/constant/assets_constants.dart';
import '../../data/user_details/datastore/models/user_details.dart';
import '../widgets/next_button.dart';
import 'user_profile_constants.dart';

class SetGoalsScreen extends StatelessWidget {
  final UserDetails userDetails;
  const SetGoalsScreen({
    Key? key,
    required this.userDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 28,
              ),
              const Expanded(
                flex: 1,
                child: Text(
                  "Set your Goals",
                  style: headerStyle,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Image.asset(
                      setGoalsIcon,
                      height: MediaQuery.of(context).size.height * 0.34,
                      width: double.infinity,
                    ),
                    const SizedBox(height: 28),
                    const Text("Tell us about your current conditions.",
                        style: descriptionStyle),
                    const Text(
                      "This information is essential to calculate",
                      style: descriptionStyle,
                    ),
                    const Text(
                      "and set your goals.",
                      style: descriptionStyle,
                    ),
                  ],
                ),
              ),
              NextButton(
                isExtendedButton: false,
                onPressed: () => onNextBtnPress(context),
                btnName: "Next",
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onNextBtnPress(BuildContext context) {
    jumpToUserProfileDetailsScreen(
      context: context,
      userDetails: userDetails,
    );
  }
}
