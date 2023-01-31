import 'package:fitness_user/config/app_navigation.dart';
import 'package:flutter/material.dart';

class AlreadyAMember extends StatelessWidget {
  const AlreadyAMember({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already a member?",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
            jumpToLoginScreen(context: context);
          },
          child: Text(
            "Login",
            style: TextStyle(
              color: ThemeData().primaryColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
