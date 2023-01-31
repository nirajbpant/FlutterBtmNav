import 'package:flutter/material.dart';

import '../../../config/constant/app_constants.dart';
import '../../../config/enum_bmi.dart';
import '../../widgets/next_button.dart';
import '../user_profile_constants.dart';

class BMIScreen extends StatelessWidget {
  final VoidCallback onSubmitted;
  final double bmi;
  const BMIScreen({Key? key, required this.bmi, required this.onSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Your ",
              style: TextStyle(
                  fontFamily: fontNameLato,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            Text(
              "BMI",
              style: TextStyle(
                  fontFamily: fontNameLato,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        const Text(
          "The body mass index(BMI) is a masure \n used to indicate the fitness of a person",
          style: TextStyle(
            color: Colors.black45,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          double.parse((bmi).toStringAsFixed(2)).toString(),
          style: const TextStyle(
            fontFamily: fontNamePoppins,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 40,
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You are under ",
              style: bmiFooterTextStyle,
            ),
            Text(
              getBMICategory(bmi),
              style: const TextStyle(
                  fontFamily: fontNameLato,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            const Text(
              " category",
              style: bmiFooterTextStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 36,
        ),
        const Align(
          alignment: Alignment(-0.4, 0),
          child: Text(
            "BMI Categories",
            style: TextStyle(
                fontFamily: fontNameLato,
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black),
          ),
        ),
        const Text(
          "Underweight = <18.5 \nNormal Weight = 18.5-24.9 \nOverweight = 25-29.9 \nObesity = BMI of 30 or greater",
          style: bmiFooterTextStyle,
        ),
        const SizedBox(height: 24),
        NextButton(
            onPressed: onSubmitted, btnName: "Next", isExtendedButton: false),
      ],
    );
  }

  String getBMICategory(double calculatedBmi) {
    if (calculatedBmi < 18.5) {
      return WeightCategory.underweight.name;
    } else if (calculatedBmi > 18.5 && calculatedBmi < 24.9) {
      return WeightCategory.normalWeight.name;
    } else if (calculatedBmi > 25 && calculatedBmi < 29.9) {
      return WeightCategory.overweight.name;
    } else {
      return WeightCategory.obesity.name;
    }
  }
}
