// part of EnviroKlenzImportBundle;

import 'package:flutter/material.dart';

import 'SizeConfig.dart';
import 'Themes.dart';

extension NullAndEmpty on String? {
  bool get notNullEmpty => this != null && this != '';
}

extension TempConversions on num {
  int get toCelsius => ((toDouble() - 32) * 5 / 9).round();
  int get toFahrenheit => ((toDouble() * 9 / 5) + 32).round();
}

extension ListExtensions on List {
  bool hasIndex(int index) {
    try {
      elementAt(index);
      return true;
    } on RangeError {
      return false;
    }
  }
}

extension ContextExtension on BuildContext {
  pushTo(dynamic page) =>
      Navigator.push(this, MaterialPageRoute(builder: (context) => page));
  // pop() => Navigator.pop(this);
  bool get canPop => Navigator.canPop(this);
}

extension CustomFontStyles on num {
  TextStyle get regular => TextStyle(
      color: Themes.txtclr,
      fontSize: toDouble() * SizeConfig.blockSizeVertical,
      fontFamily: fontRegular);

  TextStyle get medium => TextStyle(
      color: Themes.txtclr,
      fontSize: toDouble() * SizeConfig.blockSizeVertical,
      fontFamily: fontMedium);

  TextStyle get bold => TextStyle(
      color: Themes.txtclr,
      fontSize: this.toDouble() * SizeConfig.blockSizeVertical,
      fontFamily: fontBold);

  TextStyle get light => TextStyle(
      color: Themes.txtclr,
      fontSize: toDouble() * SizeConfig.blockSizeVertical,
      fontFamily: fontLight);

  TextStyle get extraLight => TextStyle(
      color: Themes.txtclr,
      fontSize: toDouble() * SizeConfig.blockSizeVertical,
      fontFamily: fontExtraLight);

  TextStyle get thin => TextStyle(
      color: Themes.txtclr,
      fontSize: toDouble() * SizeConfig.blockSizeVertical,
      fontFamily: fontThin);

  TextStyle get black => TextStyle(
      color: Themes.txtclr,
      fontSize: toDouble() * SizeConfig.blockSizeVertical,
      fontFamily: fontBlack);

  TextStyle get DemiBold => TextStyle(
      color: Themes.txtclr,
      fontSize: toDouble() * SizeConfig.blockSizeVertical,
      fontFamily: fontDemiBold);

  BorderRadius get customRadius => BorderRadius.circular(this.toDouble());
}

extension CustomFont on TextStyle {
  TextStyle space(double space) {
    return copyWith(
        letterSpacing: space.toDouble() * SizeConfig.blockSizeHorizontal);
  }

  TextStyle lineHeight(double space) {
    return copyWith(height: space.toDouble());
  }

  TextStyle Underline1({Color color = Colors.white}) => copyWith(
        decoration: TextDecoration.underline,
        decorationColor: color,
        decorationThickness: 1,
      );

  TextStyle Underline2() => copyWith(
        decoration: TextDecoration.underline,
        decorationColor: color,
        decorationThickness: 2,
      );

  TextStyle get avoidOverflow => copyWith(overflow: TextOverflow.ellipsis);

  TextStyle get color10 => copyWith(color: Themes.color10);
  TextStyle get color20 => copyWith(color: Themes.color20);
  TextStyle get color30 => copyWith(color: Themes.color30);
  TextStyle get color40 => copyWith(color: Themes.color40);
  TextStyle get color50 => copyWith(color: Themes.color50);
  TextStyle get color60 => copyWith(color: Themes.color60);
  TextStyle get color70 => copyWith(color: Themes.color70);
  TextStyle get color80 => copyWith(color: Themes.color80);
  TextStyle get color90 => copyWith(color: Themes.color90);
  TextStyle get txtclr => copyWith(color: Themes.color);
  TextStyle Setcolor(Color color) => copyWith(color: color);
}

//fonts
const fontBlack = 'TTCommons-Black';
const fontDemiBold = 'TTCommons_Demi';
const fontBold = 'TTCommons-Bold';
const fontRegular = 'TTCommons-Regular';
const fontMedium = 'TTCommons-Medium';
const fontThin = 'TTCommons-Thin';
const fontLight = 'TTCommons-Light';
const fontExtraLight = 'TTCommons-ExtraLight';
