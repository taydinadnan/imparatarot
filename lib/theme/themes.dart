import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../public/constants.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: colorPrimary,
    appBarTheme: AppBarTheme(
      toolbarTextStyle: TextTheme(
        headline2: TextStyle(color: colorTitle),
      ).bodyText2,
      titleTextStyle: TextTheme(
        headline2: TextStyle(color: colorTitle),
      ).headline6,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: colorPrimary,
    appBarTheme: AppBarTheme(
      toolbarTextStyle: const TextTheme(
        headline2: TextStyle(color: Colors.white),
      ).bodyText2,
      titleTextStyle: const TextTheme(
        headline2: TextStyle(color: Colors.white),
      ).headline6,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
  );
}
