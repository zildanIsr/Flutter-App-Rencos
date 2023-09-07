import 'package:flutter/material.dart';
import '/resources/themes/styles/color_styles.dart';

/*
|--------------------------------------------------------------------------
| Dark Theme Colors
|--------------------------------------------------------------------------
*/

class DarkThemeColors implements ColorStyles {
  // general
  Color get background => const Color(0xFF232c33);

  Color get primaryContent => const Color(0xFFE1E1E1);
  //Color get primaryAccent => const Color(0xFF9999aa);
  Color get primaryAccent => const Color.fromRGBO(209, 77, 114, 1);

  Color get surfaceBackground => Colors.white70;
  Color get surfaceContent => Colors.black;

  // app bar
  Color get appBarBackground => const Color(0xFF4b5e6d);
  //Color get appBarBackground => const Color.fromARGB(255, 233, 142, 173);
  Color get appBarPrimaryContent => Colors.white;

  // buttons
  //Color get buttonBackground => Colors.white60;
  Color get buttonBackground => Color.fromARGB(255, 58, 79, 122);
  Color get buttonPrimaryContent => const Color(0xFF232c33);

  // bottom tab bar
  Color get bottomTabBarBackground => const Color(0xFF232c33);

  // bottom tab bar - icons
  Color get bottomTabBarIconSelected => Color.fromARGB(255, 233, 142, 173);
  Color get bottomTabBarIconUnselected => Colors.white60;

  // bottom tab bar - label
  Color get bottomTabBarLabelUnselected => Colors.white54;
  Color get bottomTabBarLabelSelected => Colors.white;
}
