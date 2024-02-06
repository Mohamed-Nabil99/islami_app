import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color WhiteColor = Color(0xffF8F8F8);
  static Color primarydark = Color(0xff141A2E);
  static Color yallowColor = Color(0xffFACC1D);

  static ThemeData lightMode = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: primaryLight
          selectedItemColor: blackColor,
          showUnselectedLabels: true),
      textTheme: TextTheme(
        titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      ));
  static ThemeData darkMode = ThemeData(
      primaryColor: primarydark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: WhiteColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: primaryLight
          selectedItemColor: yallowColor,
          showUnselectedLabels: true),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: WhiteColor),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w500, color: WhiteColor),
        titleSmall: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: WhiteColor),
      ));
}
