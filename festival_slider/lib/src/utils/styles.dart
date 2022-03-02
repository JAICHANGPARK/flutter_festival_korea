import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kPrimaryColor = const Color(0xff0553b1);
Color kSecondaryColor = const Color(0xff0468d7);
Color kBackgroundDark = const Color(0xff042b59);

/// The 2018 spec has thirteen text styles:
/// ```
/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5
///
///  displayLarge = displayLarge ?? headline1,
//        displayMedium = displayMedium ?? headline2,
//        displaySmall = displaySmall ?? headline3,
//        headlineMedium = headlineMedium ?? headline4,
//        headlineSmall = headlineSmall ?? headline5,
//        titleLarge = titleLarge ?? headline6,
//        titleMedium = titleMedium ?? subtitle1,
//        titleSmall = titleSmall ?? subtitle2,
//        bodyLarge = bodyLarge ?? bodyText1,
//        bodyMedium = bodyMedium ?? bodyText2,
//        bodySmall = bodySmall ?? caption,
//        labelLarge = labelLarge ?? button,
//        labelSmall = labelSmall ?? overline;

ThemeData themeData = ThemeData(
  fontFamily: 'NanumGothic',
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 48,
      color: kPrimaryColor,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 40,
      color: kSecondaryColor,
    ),
  ),
);
