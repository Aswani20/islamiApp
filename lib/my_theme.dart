import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = const Color(0xffB7935F);
  static Color primaryDark = const Color(0xff141A2E);
  static Color blackColor = const Color(0xff242424);
  static Color whiteColor = const Color(0xffffffff);
  static Color yellowColor = const Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,

    /// AppBar theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: blackColor),
    ),

    /// Text Theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),

    /// Bottom Navigation Bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      selectedIconTheme: const IconThemeData(size: 40),
      unselectedIconTheme: const IconThemeData(size: 30),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      showUnselectedLabels: false,
      showSelectedLabels: true,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,

    /// AppBar theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: whiteColor),
    ),

    /// Text Theme
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: whiteColor,
      ),
      titleSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: yellowColor,
      ),
    ),

    /// Bottom Navigation Bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: whiteColor,
      selectedIconTheme: const IconThemeData(size: 40),
      unselectedIconTheme: const IconThemeData(size: 30),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      showUnselectedLabels: false,
      showSelectedLabels: true,
    ),
  );
}
