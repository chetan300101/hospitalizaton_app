// part of EnviroKlenzImportBundle;


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'DarkBlueTheme.dart';
import 'DarkTheme.dart';
import 'LightTheme.dart';
import 'RegluarTheme.dart';
import 'Themes.dart';

enum ThemeType { regular, light, dark, darkBlue }

class ThemeController extends GetxController {
  // @override
  // void onInit() async {
  //   super.onInit();
  //   final pref = await SharedPreferences.getInstance();
  //   String theme = pref.getString('theme') ?? 'dark';
  //   if (theme == 'light') {
  //     themeType = ThemeType.light;
  //   } else if (theme == 'dark') {
  //     themeType = ThemeType.dark;
  //   } else if (theme == 'darkblue') {
  //     themeType = ThemeType.darkBlue;
  //   } else {
  //     themeType = ThemeType.regular;
  //   }
  // }
  String language = 'en_US';
  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  ThemeStyle themeStyle = LightTheme();
  ThemeType? themeType;
  bool get isDark => (_themeMode == ThemeMode.light);

  setTheme(ThemeType theme) {
    if (theme == ThemeType.light) {
      _themeMode = ThemeMode.light;
      themeType = ThemeType.light;
      themeStyle = LightTheme();
    } else {
      _themeMode = ThemeMode.dark;
      if (theme == ThemeType.dark) {
        themeStyle = DarkTheme();
        themeType = ThemeType.dark;
      } else if (theme == ThemeType.darkBlue) {
        themeStyle = DarkBlueTheme();
        themeType = ThemeType.darkBlue;
      } else {
        themeStyle = RegluarTheme();
        themeType = ThemeType.regular;
      }
    }
    try {
      Themes.ct = Get.find<ThemeController>();
      update(['mainApp']);
      print('themetype themect $themeType');
    } catch (e) {
      print('themetype error $e');
    }
  }
}

final ThemeData lightThemeData = ThemeData().copyWith(
    primaryColor: Color(0xFFF1F2ED),
    // backgroundColor: Color(0xFFF1F2ED),
    canvasColor: Color(0xFFF1F2ED),
    scaffoldBackgroundColor: Color(0xFFF3F2F8),
    // textTheme: const TextTheme(
    //   bodyText1: TextStyle(color: Colors.black),
    //   bodyText2: TextStyle(color: Colors.black),
    // ),
    appBarTheme: const AppBarTheme(
        color: Color(0xFFF1F2ED),
        titleTextStyle: TextStyle(color: Colors.black)),
    shadowColor: Colors.black45,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue,
      onPrimary: Colors.black,
      secondary: Colors.black,
      onSecondary: Colors.black,
      error: Colors.black,
      onError: Colors.black,
      background: Colors.black,
      onBackground: Colors.black,
      surface: Colors.black,
      onSurface: Colors.black,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.blue.withOpacity(0.3),
      selectionColor: Colors.blue.withOpacity(0.3),
      selectionHandleColor: Colors.blue.withOpacity(0.3),
    ),
    dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        contentTextStyle: TextStyle(color: Colors.black)));

final ThemeData darkThemeData = ThemeData().copyWith(
  primaryColor: const Color(0xff232742),
  // backgroundColor: const Color(0xff232742),
  // canvasColor: const Color(0xff232742), //const Color(0xff232742),
  scaffoldBackgroundColor: const Color(0xff232742),
  // textTheme: const TextTheme(
  //     bodyText1: TextStyle(color: Colors.white),
  //     bodyText2: TextStyle(color: Colors.white)),
  appBarTheme: const AppBarTheme(
    color: Color(0xff232742),
    titleTextStyle: TextStyle(color: Colors.white),
  ),
  shadowColor: Colors.white38,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.blue,
    onPrimary: Colors.white,
    secondary: Colors.white,
    onSecondary: Colors.white,
    error: Colors.white,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.white,
    surface: Colors.white,
    onSurface: Colors.white,
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.blue.withOpacity(0.3),
    selectionColor: Colors.blue.withOpacity(0.3),
    selectionHandleColor: Colors.blue.withOpacity(0.3),
  ),
);
