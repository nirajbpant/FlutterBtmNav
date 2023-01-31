import 'package:flutter/material.dart';

import '../../config/constant/app_constants.dart';
import 'google_sign_button.dart';

class FormHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  final String btnFunctionName;
  const FormHeader({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.btnFunctionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black87,
            fontFamily: fontNameLato,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Text(
          subTitle,
          style: const TextStyle(
            color: Colors.grey,
            fontFamily: fontNameLato,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: GoogleSignInButton(
            btnFunctionName: btnFunctionName,
          ),
        ),
      ],
    );
  }
}
