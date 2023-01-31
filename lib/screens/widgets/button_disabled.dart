import 'package:flutter/material.dart';

import '../../config/constant/app_constants.dart';

class DisabledButton extends StatelessWidget {
  final String btnName;
  const DisabledButton({
    Key? key,
    required this.btnName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: SizedBox(
        height: 70,
        width: 250,
        child: ElevatedButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: const BorderSide(color: Colors.grey),
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
          label: const SizedBox(),
        ),
      ),
    );
  }
}
