import 'package:fitness_user/config/constant/app_constants.dart';
import 'package:fitness_user/config/constant/assets_constants.dart';
import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  final String btnFunctionName;
  const GoogleSignInButton({Key? key, required this.btnFunctionName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(2),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: googleThemeColor,
        alignment: Alignment.centerLeft,
      ),
      onPressed: null,
      icon: Container(
        width: 50,
        color: Colors.white,
        child: Tab(
          icon: Image.asset(
            googleLogo,
            height: 28.0,
          ),
        ),
      ),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 10.0,
              bottom: 5,
            ),
            child: Text(
              btnFunctionName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: fontNameLato),
            ),
          ),
        ],
      ),
    );
  }
}
