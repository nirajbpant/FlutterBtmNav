import 'package:flutter/material.dart';

import '../../config/constant/app_constants.dart';

class FormButton extends StatelessWidget {
  final Color color;
  final String buttonName;
  final Color btnTextColor;
  final double btnTextSize;
  final Widget icon;
  final double btnSize;
  final VoidCallback onPressed;
  const FormButton({
    Key? key,
    required this.color,
    required this.buttonName,
    required this.btnTextColor,
    required this.btnTextSize,
    required this.icon,
    required this.btnSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Material(
        elevation: 2,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: 20,
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon == const SizedBox() ? const SizedBox() : icon,
              Text(
                buttonName,
                style: TextStyle(
                  color: btnTextColor,
                  fontSize: btnTextSize,
                  fontFamily: fontNameLato,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
