import 'package:fitness_user/config/constant/assets_constants.dart';
import 'package:flutter/material.dart';

import '../home_screen_constants.dart';

class YourDiet extends StatelessWidget {
  const YourDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Align(
          child: Text(
            "Your Diet",
            style: statHeaderStyle,
          ),
          alignment: Alignment(-0.7, 0),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _Meal(title: "Meal one"),
              _Meal(title: "Meal two"),
              _Meal(title: "Meal three"),
            ],
          ),
        ),
      ],
    );
  }
}

class _Meal extends StatelessWidget {
  final String title;
  const _Meal({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        elevation: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60, width: 60, child: Image.asset(dishIcon)),
            Text(title),
          ],
        ),
      ),
    );
  }
}
