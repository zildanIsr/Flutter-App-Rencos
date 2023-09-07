import 'package:flutter/material.dart';
import '/resources/themes/styles/color_styles.dart';

/*
|--------------------------------------------------------------------------
| Light Theme Colors
|--------------------------------------------------------------------------
*/

class LightThemeColors implements ColorStyles {
  // general
  Color get background => const Color(0xFFFFFFFF);

  Color get primaryContent => const Color(0xFF000000);
  Color get primaryAccent => Color.fromRGBO(209, 77, 114, 1);

  Color get surfaceBackground => Colors.white;
  Color get surfaceContent => Colors.black;

  // app bar
  Color get appBarBackground => const Color(0xFFFFFFFF);
  Color get appBarPrimaryContent => Colors.black;

  // buttons
  Color get buttonBackground => Color.fromARGB(255, 58, 79, 122);
  Color get buttonPrimaryContent => Colors.white;

  // bottom tab bar
  Color get bottomTabBarBackground => Colors.white;

  // bottom tab bar - icons
  Color get bottomTabBarIconSelected => Color.fromARGB(255, 233, 142, 173);
  Color get bottomTabBarIconUnselected => Colors.black54;

  // bottom tab bar - label
  Color get bottomTabBarLabelUnselected => Colors.black45;
  Color get bottomTabBarLabelSelected => Colors.black;
}
