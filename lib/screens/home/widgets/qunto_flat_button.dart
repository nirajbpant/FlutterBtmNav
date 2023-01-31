import 'package:flutter/material.dart';

import '../../../config/constant/app_constants.dart';

class QuntoFlatButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnName;
  final Widget icon;
  const QuntoFlatButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.btnName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: const BorderSide(color: Colors.black),
            ),
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 5),
          child: Text(
            btnName,
            style: const TextStyle(
              fontFamily: fontNameLato,
              fontSize: 16,
            ),
          ),
        ),
        label: icon,
      ),
    );
  }
}
