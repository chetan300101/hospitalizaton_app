// part of EnviroKlenzImportBundle;
import 'dart:io';
import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;
  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVertical;
  static var heightpx = WidgetsBinding.instance.window.physicalSize.height;
  static var widthpx = WidgetsBinding.instance.window.physicalSize.width;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = (Platform.isAndroid && getDeviceType() != "phone")
        ? 1200
        : _mediaQueryData.size.width;

    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = getWidth();
    blockSizeVertical = getHeight();
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }

  double getWidth() {
    if (getDeviceType() == "phone") {
      return (screenWidth / 375);
    } else {
      return (screenWidth / 1080);
    }
  }

  double getHeight() {
    if (getDeviceType() == "phone") {
      return (screenHeight / 750);
    } else {
      return (screenHeight / 810);
    }
  }

  String getDeviceType() {
    String device_type = "";
    Orientation currentOrientation =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).orientation;
    if (currentOrientation == Orientation.portrait) {
      var width =
          MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

      if (width > 510) {
        device_type = "tablet";
      } else {
        device_type = "phone";
      }
    } else {
      var height =
          MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;

      if (height > 510) {
        device_type = "tablet";
      } else {
        device_type = "phone";
      }
    }
    return device_type;
  }

}
