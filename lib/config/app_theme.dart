import 'package:flutter/material.dart';

import 'constant/app_constants.dart';

class AppTheme {
  static const Color onPrimaryColor = Colors.black;
  static const Color onSecondaryColor = Colors.white;
  static const Color primaryAppColor = Color(0xff1183fa);
  static ThemeData get appTheme => ThemeData(
        primaryColor: primaryAppColor,
        scaffoldBackgroundColor: scaffoldBackGroundColor,
        errorColor: errorColor,
        textTheme: _textTheme,
        appBarTheme: const AppBarTheme(
          brightness: Brightness.light,
          color: primaryAppColor,
          iconTheme: IconThemeData(color: onSecondaryColor),
          textTheme: _textTheme,
        ),
      );

  static const TextTheme _textTheme = TextTheme(
    headline1: screenHeading1Style,
    headline2: screenHeading2Style,
    headline3: screenHeading3Style,
    headline4: screenHeading3Style,
    headline5: screenHeading3Style,
    headline6: screenHeading6Style, //app bar text style
    subtitle1: screenSubtitleStyle,
    subtitle2: screenSubtitle2Style,
    bodyText1: screenBodyStyle,
    bodyText2: screenBody2Style,
    button: screenButtonStyle,
    caption: screenCaptionStyle,
    overline: screenOverlineStyle,
  );

  static TextTheme textThemeWhiteColor = TextTheme(
    headline1: screenHeading1Style.copyWith(color: onSecondaryColor),
    headline2: screenHeading2Style.copyWith(color: onSecondaryColor),
    headline3: screenHeading3Style.copyWith(color: onSecondaryColor),
    headline4: screenHeading3Style.copyWith(color: onSecondaryColor),
    headline5: screenHeading3Style.copyWith(color: onSecondaryColor),
    headline6: screenHeading6Style.copyWith(
      color: onSecondaryColor,
    ), //app bar text style
    subtitle1: screenSubtitleStyle.copyWith(color: onSecondaryColor),
    subtitle2: screenSubtitle2Style.copyWith(color: onSecondaryColor),
    bodyText1: screenBodyStyle.copyWith(color: onSecondaryColor),
    bodyText2: screenBody2Style.copyWith(color: onSecondaryColor),
    button: screenButtonStyle.copyWith(color: onSecondaryColor),
    caption: screenCaptionStyle.copyWith(color: onSecondaryColor),
    overline: screenOverlineStyle.copyWith(color: onSecondaryColor),
  );

  static const TextStyle screenHeading1Style = TextStyle(
    fontSize: 24,
    fontFamily: fontNameLato,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.15,
    height: 1.25,
    color: onPrimaryColor,
  );

  static const TextStyle screenHeading2Style = TextStyle(
    fontSize: 17,
    fontFamily: fontNameLato,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: -0.1,
    color: onPrimaryColor,
  );

  static const TextStyle screenHeading3Style = TextStyle(
    fontSize: 16,
    fontFamily: fontNameLato,
    fontWeight: FontWeight.w600,
    height: 1.1,
    color: onPrimaryColor,
  );

  static const TextStyle screenHeading6Style = TextStyle(
    fontSize: 17,
    fontFamily: fontNameLato,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.1,
    height: 1.25,
    color: onPrimaryColor,
  );

  static const TextStyle screenSubtitleStyle = TextStyle(
    fontSize: 16,
    fontFamily: fontNameLato,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: onPrimaryColor,
  );

  static const TextStyle screenSubtitle2Style = TextStyle(
    fontSize: 14,
    fontFamily: fontNameLato,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: onPrimaryColor,
  );
  static const TextStyle screenBodyStyle = TextStyle(
    fontSize: 16,
    // fontFamily: FontNameRoboto,
    fontWeight: FontWeight.normal,
    height: 1.5,
    letterSpacing: 0,
    color: onPrimaryColor,
  );

  static const TextStyle screenBody2Style = TextStyle(
    fontSize: 14,
    // fontFamily: FontNameRoboto,
    fontWeight: FontWeight.normal,
    height: 1.5,
    letterSpacing: 0,
    color: onPrimaryColor,
  );

  static const TextStyle screenButtonStyle = TextStyle(
    fontSize: 16,
    fontFamily: fontNameLato,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: onPrimaryColor,
  );

  static const TextStyle screenCaptionStyle = TextStyle(
    fontSize: 12.0,
    // fontFamily: FontNameRoboto,
    fontWeight: FontWeight.w500,
    height: 1.16,
    color: onPrimaryColor,
  );

  static const TextStyle screenOverlineStyle = TextStyle(
    fontSize: 10.0,
    fontFamily: fontNameLato,
    fontWeight: FontWeight.normal,
    height: 1.5,
    letterSpacing: 0,
    color: onPrimaryColor,
  );
}
