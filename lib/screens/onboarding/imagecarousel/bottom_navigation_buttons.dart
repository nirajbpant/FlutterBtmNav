import 'package:flutter/material.dart';

import '../../../config/app_navigation.dart';
import '../onboarding_constants.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenWidth,
      child: Column(
        children: <Widget>[
          //Register/Join
          GestureDetector(
            onTap: () => jumpToRegsiterScreen(context: context),
            child: Container(
              height: screenHeight * 0.06,
              width: screenWidth * 0.65,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already a member? ",
                style: alreadyAMemberStyle,
              ),
              GestureDetector(
                onTap: () => jumpToLoginScreen(context: context),
                child: const Text(
                  "Log in",
                  style: loginStyle,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
