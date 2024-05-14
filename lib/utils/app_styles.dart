import 'package:flutter/material.dart';
import 'package:protfolio/utils/app_colors.dart';
import 'package:protfolio/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleMedium17(context) => TextStyle(
        color: AppColors.unSelectedAppBarTitles,
        fontSize: getResponsiveFontSize(context, fontSize: 17),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleRegular17(context) => TextStyle(
        color: AppColors.unSelectedAppBarTitles,
        fontSize: getResponsiveFontSize(context, fontSize: 17),
      );

  static TextStyle styleBold60(context) => TextStyle(
        color: AppColors.homeMainText,
        fontSize: getResponsiveFontSize(context, fontSize: 60),
        fontWeight: FontWeight.w700,
      );

  static TextStyle styleBold40(context) => TextStyle(
        color: AppColors.homeMainText,
        fontSize: getResponsiveFontSize(context, fontSize: 40),
        fontWeight: FontWeight.w700,
      );

  static TextStyle styleRegular25(context) => TextStyle(
        color: AppColors.homeMainText,
        fontSize: getResponsiveFontSize(context, fontSize: 25),
      );
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
