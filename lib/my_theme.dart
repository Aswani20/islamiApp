import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);

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
    textTheme: TextTheme(
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
      // showUnselectedLabels: true,
    ),
  );
}
