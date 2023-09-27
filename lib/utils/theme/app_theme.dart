
import 'package:consultant_app_ui/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'color_schemes.g.dart';

class AppTheme {
  static ThemeData lightTheme =
      ThemeData(
          // scaffoldBackgroundColor:lightColorScheme.background ,
          colorScheme: lightColorScheme, textTheme: textTheme);
  static ThemeData darkTheme =
      ThemeData(
          // scaffoldBackgroundColor:darkColorScheme.background ,
          colorScheme: darkColorScheme, textTheme: textTheme);
}
