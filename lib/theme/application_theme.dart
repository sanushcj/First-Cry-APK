import 'package:first_cry_ui/theme/theme.dart';
import 'package:flutter/material.dart';

class FirstCryTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.whiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Pallete.lightyellow,
      elevation: 0,
    ),
  );
}
