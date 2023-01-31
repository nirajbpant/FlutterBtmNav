import 'package:fitness_user/config/constant/app_constants.dart';
import 'package:flutter/material.dart';

import '../../config/app_theme.dart';

class Error404Screen extends StatelessWidget {
  final String errorText;
  const Error404Screen({Key? key, required this.errorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Expanded(
        child: Container(
          color: AppTheme.primaryAppColor,
          child: Column(
            children: [
              Text(
                errorText,
                style: const TextStyle(
                  fontFamily: fontNameLato,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
