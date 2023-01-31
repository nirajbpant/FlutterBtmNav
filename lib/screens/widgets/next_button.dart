import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/constant/app_constants.dart';
import '../../config/constant/assets_constants.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnName;
  final bool isExtendedButton;
  const NextButton({
    Key? key,
    required this.onPressed,
    required this.btnName,
    required this.isExtendedButton,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: SizedBox(
        height: 70,
        width: !isExtendedButton ? 170 : 250,
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
                fontSize: 25,
              ),
            ),
          ),
          label: Padding(
            padding: const EdgeInsets.only(top: 4, left: 10),
            child: SvgPicture.asset(
              rightArrowIcon,
              color: Colors.white,
              height: 25,
            ),
          ),
        ),
      ),
    );
  }
}
