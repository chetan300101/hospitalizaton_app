// part of EnviroKlenzImportBundle;

import 'package:flutter/material.dart';

import 'Themes.dart';

class LightTheme extends ThemeStyle {
  Color backgroundColor = Color.fromRGBO(237, 245, 247, 1);
  Color popup_background = Color.fromRGBO(0, 0, 0, 0.2);
  Color txtclr = Colors.black;
  Color healthytxt = Colors.black;
  Color airpurificationtxt = Color.fromRGBO(61, 159, 65, 1);
  Color messengerTextColor = Colors.white;
  Color propcardclr = Color(0xFFFFFFFF);
  Color userInfoCardBGColor = Color(0xFFFFFFFF);
  Color loginbuttonclr = Color(0xFFFFFFFF);
  Color shimmerclr = Color(0x0B000000);
  Color dialbgColor = Color(0xFFefefef);
  Color backgroundforControls = Color.fromRGBO(239, 239, 239, 1);
  Color rightPanelWidgetColors = Color(0xFF757575);
  Color toggleButtonColor = Color.fromRGBO(130, 132, 172, 0.36);
  Color toggleColor = const Color.fromRGBO(56, 127, 246, 1);
  Color txtclrBlack = Colors.white;
  Color incomingMessengerColor = Color.fromRGBO(241, 240, 240, 1);
  Color outgoingMessengerColor = Color.fromRGBO(0, 132, 255, 1);
  Color loaderColor = Color.fromRGBO(0, 0, 0, 60);
  LinearGradient backclrdevicename = LinearGradient(colors: [
    Color.fromRGBO(233, 233, 233, 1),
    Color.fromRGBO(233, 233, 233, 1)
  ]);
  var dialImage = 'images/scheduler/schedulerDialRegulTheme.svg';
  var scenesDialImage = 'images/scheduler/Dial.svg';
  var sceneDetailsImage = 'images/devices/curveSceneWhiteThem.svg';
  LinearGradient floorSelectedColor = const LinearGradient(colors: [
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(255, 255, 255, 1)
  ]);

  LinearGradient messengerChatRowColor = const LinearGradient(
    colors: [
      Color.fromRGBO(212, 212, 203, 1),
      Color.fromRGBO(212, 212, 203, 1)
    ],
  );

  LinearGradient floorUnSelectedColor = const LinearGradient(colors: [
    Color.fromRGBO(117, 117, 117, 0),
    Color.fromRGBO(117, 117, 117, 0)
  ]);
  Color floorSelectedBorderColor = const Color.fromRGBO(34, 83, 134, 1);
  Color floorUnselectedBorderColor = const Color.fromRGBO(117, 117, 117, 0.5);
  Color floorSelectedTextColor = Color.fromRGBO(34, 83, 134, 1);
  Color radialAxisLineColor = const Color.fromRGBO(146, 147, 147, 0.6);
  Color radioButton = const Color(0xFF3975B0);
  Color shadowuserColor = const Color(0xFF737373);
  Color NotificationIconColor = const Color.fromRGBO(56, 127, 246, 1);
  Color NotificationBorderColor = Color.fromRGBO(56, 127, 246, 1);
  Color notificationUnselectedColor = const Color(0xFF000000);
  Color NotificationBackGroundColor = Color.fromRGBO(246, 246, 246, 1);
  Color NotificationUnselectedBackGroundColor =
      Color.fromRGBO(117, 117, 117, 0);
  Color roomUnderlineColor = const Color.fromRGBO(117, 117, 117, 0.6);
  Color setMuisVolumeDailColor = Color.fromRGBO(34, 83, 134, 1);
  Color turnOffButton = const Color(0xFFb43a3a);
  Color propertiesNameColor = Color.fromRGBO(61, 127, 246, 1);
  Color turnOnButton = const Color.fromRGBO(61, 159, 65, 1);
  Color sliderColor = const Color.fromRGBO(147, 147, 147, 1);
  Color deviceNameBoxMiddle = const Color.fromRGBO(147, 147, 147, 1);
  LinearGradient stopbackgroundclr = LinearGradient(
      colors: [Color.fromRGBO(34, 83, 134, 1), Color.fromRGBO(34, 83, 134, 1)]);
  Color individualDialColor = const Color.fromRGBO(239, 239, 239, 1);
  Color lightModeBgColor = const Color.fromRGBO(117, 117, 117, 0.6);
  Color sceneWeekDaysBorder = const Color.fromRGBO(61, 127, 246, 1);
  Color sceneWeekDaysSelectBackGround = Color(0xFFFFFFFF);

  Color messengerUnreadMsgbg = const Color.fromRGBO(233, 233, 230, 1);
  Color messengerUnreadMsgCount = const Color.fromRGBO(191, 191, 191, 1);
  Color buttonColor = Color.fromRGBO(34, 83, 134, 1);

  LinearGradient defaultImageBackground = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color.fromRGBO(233, 233, 230, 1), Color(0xFFFFFFFF)]);

  var lightRangePointer = <Color>[
    const Color.fromRGBO(93, 93, 93, 1),
    const Color.fromRGBO(93, 93, 93, 1),
  ];

  LinearGradient pointerColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(34, 83, 134, 1),
        Color.fromRGBO(106, 145, 186, 1)
      ]);

  Gradient gaugeRangeGradient1 = const SweepGradient(
    colors: <Color>[
      Color.fromRGBO(73, 71, 167, 1),
      Color.fromRGBO(100, 120, 204, 1)
    ],
    stops: <double>[0.25, 0.75],
  );
  Gradient gaugeRangeGradient2 = const SweepGradient(
    colors: <Color>[
      Color.fromRGBO(73, 71, 167, 1),
      Color.fromRGBO(100, 120, 204, 1)
    ],
    stops: <double>[0.25, 0.75],
  );

  LinearGradient scenePlayStopButton = const LinearGradient(colors: [
    Color.fromRGBO(233, 233, 230, 1),
    Color.fromRGBO(248, 248, 248, 1)
  ]);

  LinearGradient gradient2 = const LinearGradient(
    colors: [Color.fromRGBO(78, 86, 142, 1), Color.fromRGBO(43, 49, 85, 1)],
    end: Alignment(2.00, 2.30),
  );

  LinearGradient gradient = const LinearGradient(
    colors: [
      Color.fromRGBO(255, 255, 255, 1),
      Color.fromRGBO(255, 255, 255, 1)
    ],
    end: Alignment(2.00, 2.30),
  );
  LinearGradient iphonebackbutton = LinearGradient(colors: [
    Color.fromRGBO(233, 233, 230, 1),
    Color.fromRGBO(233, 233, 230, 1)
  ]);
  LinearGradient tabletbackbutton = LinearGradient(colors: [
    Color.fromRGBO(233, 233, 230, 1),
    Color.fromRGBO(233, 233, 230, 1)
  ]);

  LinearGradient musicListbackButton = LinearGradient(colors: [
    Color.fromRGBO(106, 136, 204, 1),
    Color.fromRGBO(106, 136, 204, 1),
  ]);

  LinearGradient iphoneGradient = LinearGradient(colors: [
    Color.fromRGBO(248, 248, 248, 1),
    Color.fromRGBO(248, 248, 248, 1)
  ]);

  LinearGradient dialGradient = LinearGradient(colors: [
    Color.fromRGBO(248, 248, 248, 1),
    Color.fromRGBO(248, 248, 248, 1)
  ]);

  Gradient fourComfortsRadilAxis = const SweepGradient(
      colors: [Color.fromRGBO(34, 83, 134, 1), Color.fromRGBO(34, 83, 134, 1)]);

  Color color10 = Color(0x1A000000);
  Color color20 = Color(0x33000000);
  Color color25 = Color(0x40000000);
  Color color30 = Color(0x4D000000);
  Color color40 = Color(0x66000000);
  Color color50 = Color(0x80000000);
  Color color60 = Color(0x99000000);
  Color color70 = Color(0xB3000000);
  Color color75 = Color(0xBF000000);
  Color color80 = Color(0xCC000000);
  Color color85 = Color(0xD9000000);
  Color color90 = Color(0xE6000000);
  Color color = Color(0xFF000000);
  Color floorTextColor = Color.fromRGBO(34, 83, 134, 1);
  Color floorUnderlineColor = Color.fromRGBO(34, 83, 134, 1);
  Color messengerDatebackground = Color.fromRGBO(241, 240, 240, 1);

  Color stopSceneButtonColor = Color.fromRGBO(34, 83, 134, 1);
  Color selectedDeviceTitleclr = Color.fromRGBO(56, 127, 246, 1);
  LinearGradient newMarkerGradient = LinearGradient(colors: [
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(238, 237, 245, 1)
  ]);
  LinearGradient newMarkerInnerGradient = LinearGradient(colors: [
    Color.fromRGBO(238, 237, 245, 1),
    Color.fromRGBO(255, 255, 255, 1)
  ]);
  Color markerLinesColor = Color.fromRGBO(34, 83, 134, 1);

  Color newFavIconColor = Color(0xFFFFC659);

  Color hourOptionClr = Color(0xFF387ff6);

  Color lowSpeedClr = Color(0xFF387ff6);
  Color highSpeedClr = Color(0xFF3d3d3d);
  Color mediumSpeedClr = Color(0xFF3d3d3d);

  Color dialBorderClr = Color(0xFF19ffffff);

  Color roomSelectedClr = Color(0xff225386);
  Color pageChooserClr = Color(0xff1d2f45);
  Color toggleOffClr = Color(0xffffffff);
  Color toggleClr = Color(0xff999999);
  Color followDeviceSetting = Color(0xffe9e9e9);
}
