import 'package:flutter/material.dart';

import '../../config/constant/app_constants.dart';

const TextStyle headerStyle = TextStyle(
  fontFamily: fontNameLato,
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
const TextStyle descriptionStyle = TextStyle(
  fontFamily: fontNameLato,
  color: Colors.grey,
  fontSize: 18,
);
const TextStyle dateStyle = TextStyle(
  fontFamily: fontNameLato,
  color: Colors.black45,
  fontSize: 18,
);

const TextStyle unselectedGoalStyle = TextStyle(
    fontFamily: fontNameLato,
    fontSize: 24,
    color: Colors.black38,
    fontWeight: FontWeight.bold);

const TextStyle selectedGoalStyle = TextStyle(
    fontFamily: fontNameLato,
    fontSize: 28,
    color: Colors.black,
    fontWeight: FontWeight.bold);

const TextStyle bmiFooterTextStyle = TextStyle(
    fontFamily: fontNameLato,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.black38);

final List<int> numberOfDays = [for (int i = 1; i <= 30; i++) i];

final int currentYear = DateTime.now().year;

final List<String> numberOfMonths = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];
const TextStyle completeProfileText = TextStyle(
  fontFamily: fontNameLato,
  color: Colors.black54,
  fontSize: 16,
);

final List<int> numberOfYear = [
  for (int i = currentYear - 18; i > currentYear - 70; i--) i
];
