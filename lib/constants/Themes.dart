// part of EnviroKlenzImportBundle;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ThemeController.dart';

abstract class ThemeStyle {}

class Themes extends ThemeStyle {
  static dynamic ct = Get.find<ThemeController>();

  //Define your variables Here
  static Color get backgroundColor => ct.themeStyle.backgroundColor;
  static Color get txtclr => ct.themeStyle.txtclr;
  static Color get healthytxt => ct.themeStyle.healthytxt;
  static Color get airpurificationtxt => ct.themeStyle.airpurificationtxt;
  static Color get loaderColor => ct.themeStyle.loaderColor;
  static Color get messengerTextColor => ct.themeStyle.messengerTextColor;
  static LinearGradient get gradient => ct.themeStyle.gradient;
  static List<BoxShadow> get shadow => ct.themeStyle.shadow;
  static Color get loginbuttonclr => ct.themeStyle.loginbuttonclr;
  static Color get propcardclr => ct.themeStyle.propcardclr;
  static Color get userInfoCardBGColor => ct.themeStyle.userInfoCardBGColor;
  static LinearGradient get gradient2 => ct.themeStyle.gradient2;
  static LinearGradient get dialGradient => ct.themeStyle.dialGradient;
  static Color get toolTipBackgroundColor => ct.themeStyle.toolTipBackgroundColor;
  static Color get dialbgColor => ct.themeStyle.dialbgColor;
  static Color get backgroundforControls => ct.themeStyle.backgroundforControls;
  static Color get rightPanelWidgetColors =>
      ct.themeStyle.rightPanelWidgetColors;
  static Color get toggleColor => ct.themeStyle.toggleColor;
  static Color get toggleButtonColor => ct.themeStyle.toggleButtonColor;
  static Color get txtclrBlack => ct.themeStyle.txtclrBlack;
  static Color get NotificationBackGroundColor =>
      ct.themeStyle.NotificationBackGroundColor;
  static Color get NotificationUnselectedBackGroundColor =>
      ct.themeStyle.NotificationUnselectedBackGroundColor;
  static LinearGradient get floorSelectedColor =>
      ct.themeStyle.floorSelectedColor;
  static LinearGradient get floorUnSelectedColor =>
      ct.themeStyle.floorUnSelectedColor;
  static LinearGradient get scenePlayStopButton =>
      ct.themeStyle.scenePlayStopButton;
  static Color get floorSelectedBorderColor =>
      ct.themeStyle.floorSelectedBorderColor;
  static Color get floorUnselectedBorderColor =>
      ct.themeStyle.floorUnselectedBorderColor;
  static Color get radialAxisLineColor => ct.themeStyle.radialAxisLineColor;
  static Color get radioButton => ct.themeStyle.radioButton;
  static Color get shadowuserColor => ct.themeStyle.shadowuserColor;
  static Color get NotificationIconColor => ct.themeStyle.NotificationIconColor;
  static Color get NotificationBorderColor =>
      ct.themeStyle.NotificationBorderColor;

  static Color get notificationUnselectedColor =>
      ct.themeStyle.notificationUnselectedColor;
  static Color get roomUnderlineColor => ct.themeStyle.roomUnderlineColor;
  static Color get setMuisVolumeDailColor =>
      ct.themeStyle.setMuisVolumeDailColor;

  static Color get turnOffButton => ct.themeStyle.turnOffButton;
  static Color get turnOnButton => ct.themeStyle.turnOnButton;
  static Color get propertiesNameColor => ct.themeStyle.propertiesNameColor;
  static Color get sliderColor => ct.themeStyle.sliderColor;
  static Color get deviceNameBoxMiddle => ct.themeStyle.deviceNameBoxMiddle;
  static LinearGradient get stopbackgroundclr =>
      ct.themeStyle.stopbackgroundclr;
  static Color get individualDialColor => ct.themeStyle.individualDialColor;
  static Gradient get messengerChatRowColor =>
      ct.themeStyle.messengerChatRowColor;
  static Color get messengerUnreadMsgbg => ct.themeStyle.messengerUnreadMsgbg;
  static Color get messengerUnreadMsgCount =>
      ct.themeStyle.messengerUnreadMsgCount;
  static Color get sceneWeekDaysBorder => ct.themeStyle.sceneWeekDaysBorder;
  static get lightRangePointer => ct.themeStyle.lightRangePointer;
  static Gradient get gaugeRangeGradient1 => ct.themeStyle.gaugeRangeGradient1;

  static Color get lightModeBgColor => ct.themeStyle.lightModeBgColor;
  static LinearGradient get defaultImageBackground =>
      ct.themeStyle.defaultImageBackground;
  static LinearGradient get iphoneGradient => ct.themeStyle.iphoneGradient;

  static LinearGradient get pointerColor => ct.themeStyle.pointerColor;

  static Gradient get fourComfortsRadilAxis =>
      ct.themeStyle.fourComfortsRadilAxis;
  static Color get buttonColor => ct.themeStyle.buttonColor;
  static Color get incomingMessengerColor =>
      ct.themeStyle.incomingMessengerColor;
  static Color get outgoingMessengerColor =>
      ct.themeStyle.outgoingMessengerColor;

  static get dialImage => ct.themeStyle.dialImage;
  static get sceneDetailsImage => ct.themeStyle.sceneDetailsImage;
  static get scenesDialImage => ct.themeStyle.scenesDialImage;
  static get iphonebackbutton => ct.themeStyle.iphonebackbutton;
  static get backclrdevicename => ct.themeStyle.backclrdevicename;
  static get tabletbackbutton => ct.themeStyle.tabletbackbutton;
  static get musicListbackButton => ct.themeStyle.musicListbackButton;
  static get sceneWeekDaysSelectBackGround =>
      ct.themeStyle.sceneWeekDaysSelectBackGround;
  static get messengerDatebackground => ct.themeStyle.messengerDatebackground;

  ///
  static Color get color10 => ct.themeStyle.color10;
  static Color get color20 => ct.themeStyle.color20;
  static Color get color25 => ct.themeStyle.color25;
  static Color get color30 => ct.themeStyle.color30;
  static Color get color40 => ct.themeStyle.color40;
  static Color get color50 => ct.themeStyle.color50;
  static Color get color60 => ct.themeStyle.color60;
  static Color get color70 => ct.themeStyle.color70;
  static Color get color75 => ct.themeStyle.color75;
  static Color get color80 => ct.themeStyle.color80;
  static Color get color85 => ct.themeStyle.color85;
  static Color get color90 => ct.themeStyle.color90;
  static Color get color => ct.themeStyle.color;
  static Color get shimmerclr => ct.themeStyle.shimmerclr;
  static Color get floorSelectedTextColor =>
      ct.themeStyle.floorSelectedTextColor;
  static Color get floorTextColor => ct.themeStyle.floorTextColor;
  static Color get floorUnderlineColor => ct.themeStyle.floorUnderlineColor;

  static Color get stopSceneButtonColor => ct.themeStyle.stopSceneButtonColor;

  static Color get selectedDeviceTitleclr =>
      ct.themeStyle.selectedDeviceTitleclr;
  static LinearGradient get newMarkerGradient =>
      ct.themeStyle.newMarkerGradient;
  static LinearGradient get newMarkerInnerGradient =>
      ct.themeStyle.newMarkerInnerGradient;

  static Color get markerLinesColor => ct.themeStyle.markerLinesColor;
  static Color get newFavIconColor => ct.themeStyle.newFavIconColor;
  static Color get popup_background => ct.themeStyle.popup_background;
  static Color get hyperLink => const Color.fromRGBO(57, 129, 246, 1);

  static Color get hourOptionClr => ct.themeStyle.hourOptionClr;

  static Color get lowSpeedClr => ct.themeStyle.lowSpeedClr;
  static Color get mediumSpeedClr => ct.themeStyle.mediumSpeedClr;
  static Color get highSpeedClr => ct.themeStyle.highSpeedClr;
  static Color get dialBorderClr => ct.themeStyle.dialBorderClr;
  static Color get roomSelectedClr => ct.themeStyle.roomSelectedClr;
  static Color get pageChooserClr => ct.themeStyle.pageChooserClr;
  static Color get toggleOffClr => ct.themeStyle.toggleOffClr;
  static Color get toggleClr => ct.themeStyle.toggleClr;
  static Color get followDeviceSetting => ct.themeStyle.followDeviceSetting;
}
