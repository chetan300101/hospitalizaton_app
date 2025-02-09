// part of EnviroKlenzImportBundle;

import 'package:flutter/material.dart';

import 'Themes.dart';

class RegluarTheme extends ThemeStyle {
  Color backgroundColor = Color(0xFF232742);
  Color popup_background = Color.fromRGBO(0, 0, 0, 0.3);
  Color txtclr = Colors.white;
  Color messengerTextColor = Colors.white;
  Color loaderColor = Colors.white;
  Color propcardclr = Color(0xff111326);
  Color userInfoCardBGColor = Color(0xff3f4365);
  Color loginbuttonclr = Color(0xff323861);
  Color shimmerclr = Color(0x0BFFFFFF);
  Color dialbgColor = Color(0xFF191919);
  Color backgroundforControls = Color(0xFF000000);
  Color rightPanelWidgetColors = Color(0xFF121739);
  Color toggleColor = Color.fromRGBO(94, 211, 212, 1);
  Color toggleButtonColor = Color.fromRGBO(88, 90, 132, 1);
  Color txtclrBlack = Colors.black;
  Color radioButton = Color(0xFF3975B0);
  Color shadowuserColor = Color.fromRGBO(35, 39, 66, 1);
  Color NotificationIconColor = Color(0xFFFFFFFF);
  Color NotificationBorderColor = Color(0xFFFFFFFF);
  Color notificationUnselectedColor = Color(0xFFFFFFFF);
  Color NotificationBackGroundColor = Color.fromRGBO(18, 23, 27, 1);
  Color NotificationUnselectedBackGroundColor = Color.fromRGBO(60, 63, 98, 1);
  Color roomUnderlineColor = Color.fromRGBO(119, 201, 233, 1);
  Color setMuisVolumeDailColor = Color.fromRGBO(119, 201, 233, 1);
  Color turnOffButton = Color(0xFFFF6363);
  Color propertiesNameColor = Color.fromRGBO(106, 136, 204, 1);
  Color turnOnButton = Color.fromRGBO(80, 231, 150, 1);
  Color sliderColor = Colors.white24;
  Color deviceNameBoxMiddle = const Color(0xff8289bd);
  LinearGradient stopbackgroundclr = LinearGradient(
      colors: [Color.fromRGBO(78, 86, 142, 1), Color.fromRGBO(78, 86, 142, 1)]);
  Color lightModeBgColor = Colors.white;
  Color individualDialColor = const Color(0xFF000000);
  Color messengerUnreadMsgbg = Color(0xFFB0C4DE);
  Color messengerUnreadMsgCount = Color(0xFF000000);
  Color sceneWeekDaysBorder = const Color.fromRGBO(119, 201, 233, 0.51);
  Color sceneWeekDaysSelectBackGround = Color.fromRGBO(35, 39, 66, 1);
  Color incomingMessengerColor = Color.fromRGBO(96, 130, 182, 1);
  Color outgoingMessengerColor = Color.fromRGBO(19, 39, 79, 1);
  LinearGradient backclrdevicename = LinearGradient(
      colors: [Color.fromRGBO(69, 74, 107, 1), Color.fromRGBO(31, 31, 70, 1)]);
  var lightRangePointer = <Color>[
    Color.fromRGBO(255, 255, 255, 0.8),
    Color.fromRGBO(255, 255, 255, 0.42),
    Color.fromRGBO(255, 255, 255, 1),
  ];
  var dialImage = 'images/scheduler/schedulerDialRegulTheme.svg';
  var scenesDialImage = 'images/scheduler/sceneDialRegulerTheme.svg';
  var sceneDetailsImage = 'images/devices/curveSceneData.svg';
  LinearGradient messengerChatRowColor = LinearGradient(
    colors: [
      Color.fromARGB(255, 43, 45, 82),
      Color.fromARGB(255, 43, 45, 82),
    ],
  );

  Gradient gaugeRangeGradient1 = const SweepGradient(
    colors: <Color>[Color(0xFF6478CC), Color(0xFF97EBEC)],
    stops: <double>[0.25, 0.75],
  );

  LinearGradient floorSelectedColor = const LinearGradient(colors: [
    Color.fromRGBO(111, 115, 155, 1),
    Color.fromRGBO(60, 63, 98, 1)
  ]);
  LinearGradient floorUnSelectedColor = LinearGradient(
      colors: [Color.fromRGBO(60, 63, 98, 1), Color.fromRGBO(60, 63, 98, 1)]);
  Color floorSelectedBorderColor = Color.fromRGBO(130, 137, 189, 1);
  Color floorUnselectedBorderColor = Color.fromRGBO(130, 137, 189, 0.4);
  Color floorSelectedTextColor = Colors.white;
  Color radialAxisLineColor = Color.fromRGBO(76, 81, 109, 1);
  Color buttonColor = Color.fromRGBO(101, 112, 183, 1);

  LinearGradient defaultImageBackground = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xff1f1f46), Color(0xff454a6b)]);
  LinearGradient scenePlayStopButton = LinearGradient(
      colors: [Color.fromRGBO(78, 86, 142, 1), Color.fromRGBO(43, 49, 85, 1)]);

  LinearGradient pointerColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(37, 45, 105, 1),
        Color.fromRGBO(117, 124, 172, 1)
      ]);
  LinearGradient gradient2 = const LinearGradient(
    colors: [Color.fromRGBO(78, 86, 142, 1), Color.fromRGBO(43, 49, 85, 1)],
    end: Alignment(2.00, 2.30),
  );

  LinearGradient gradient = const LinearGradient(
    colors: [Color(0xff454a6b), Color(0xff1f1f46)],
    end: Alignment(2.00, 2.30),
  );
  LinearGradient tabletbackbutton =
      LinearGradient(colors: [Color(0xff454a6b), Color(0xff1f1f46)]);

  LinearGradient musicListbackButton =
      LinearGradient(colors: [Color(0xff454a6b), Color(0xff1f1f46)]);
  LinearGradient iphonebackbutton =
      LinearGradient(colors: [Color(0xff454a6b), Color(0xff1f1f46)]);
  LinearGradient iphoneGradient =
      LinearGradient(colors: [Color(0xFF232742), Color(0xFF232742)]);
  LinearGradient dialGradient = const LinearGradient(
      colors: [Color(0xFF4E568E), Color(0xFF1D2035)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  Gradient fourComfortsRadilAxis = const SweepGradient(colors: [
    Color.fromRGBO(100, 120, 204, 1),
    Color.fromRGBO(151, 235, 236, 1)
  ]);

  Color color10 = Color(0x1AFFFFFF);
  Color color20 = Color(0x33FFFFFF);
  Color color25 = Color(0x40FFFFFF);
  Color color30 = Color(0x4DFFFFFF);
  Color color40 = Color(0x66FFFFFF);
  Color color50 = Color(0x80FFFFFF);
  Color color60 = Color(0x99FFFFFF);
  Color color70 = Color(0xB3FFFFFF);
  Color color75 = Color(0xBFFFFFFF);
  Color color80 = Color(0xCCFFFFFF);
  Color color85 = Color(0xD9FFFFFF);
  Color color90 = Color(0xE6FFFFFF);
  Color color = Color(0xFFFFFFFF);
  Color floorTextColor = Color.fromRGBO(96, 174, 255, 1);
  Color floorUnderlineColor = Color.fromRGBO(96, 174, 255, 1);
  Color messengerDatebackground = Color.fromRGBO(35, 39, 66, 1);

  Color stopSceneButtonColor = Colors.white;
  Color selectedDeviceTitleclr = Color.fromRGBO(56, 127, 246, 1);
  LinearGradient newMarkerGradient = LinearGradient(
      colors: [Color.fromRGBO(69, 74, 107, 1), Color.fromRGBO(31, 31, 70, 1)]);
  LinearGradient newMarkerInnerGradient = LinearGradient(
      colors: [Color.fromRGBO(31, 31, 70, 1), Color.fromRGBO(69, 74, 107, 1)]);

  Color markerLinesColor = Color.fromRGBO(149, 182, 238, 1);

  Color newFavIconColor = Color(0xFFFFC659);

  Color hourOptionClr = Color(0xFF387ff6);

  Color lowSpeedClr = Color(0xFF387ff6);
  Color highSpeedClr = Color(0xFF3d3d3d);
  Color mediumSpeedClr = Color(0xFF3d3d3d);

  Color dialBorderClr = Colors.transparent;
  Color roomSelectedClr = Color(0xff60aeff);
  Color pageChooserClr = Color(0xff5ba0f3);
  Color toggleOffClr = Color(0xff5ed3d4);
  Color toggleClr = Color(0xff585a84);
  Color followDeviceSetting = Color(0xffe9e9e9);
}
