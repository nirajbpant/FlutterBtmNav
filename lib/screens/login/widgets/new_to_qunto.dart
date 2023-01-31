import 'package:flutter/material.dart';

import '../../../config/app_navigation.dart';
import '../../../config/constant/app_constants.dart';

class NewToQunto extends StatelessWidget {
  const NewToQunto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "New to Qunto? ",
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
            jumpToRegsiterScreen(context: context);
          },
          child: const Text(
            "Register",
            style: TextStyle(
              color: googleThemeColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
