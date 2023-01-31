import 'package:flutter/material.dart';

import '../../config/constant/app_constants.dart';

class UnderConstructionScreen extends StatelessWidget {
  final String name;
  const UnderConstructionScreen({Key? key, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Under Construction",
                style: TextStyle(
                    fontFamily: fontNameLato,
                    fontSize: 40,
                    color: ThemeData().primaryColor),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Icon(
            Icons.construction,
            size: 200,
            color: ThemeData().primaryColor,
          ),
        ],
      ),
    );
  }
}
