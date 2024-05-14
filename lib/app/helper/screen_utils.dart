import 'package:flutter/material.dart';
import 'package:get/get.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallSceenSize = 360;
const int customScreenSize = 1100;

double screenWidth(BuildContext context, {double divideBy = 1, double reduceBy = 0}) {
  var width = MediaQuery.of(context).size.width;
  return (width / divideBy) - reduceBy;
}

double screenHeight(BuildContext context, {double divideBy = 1, double reduceBy = 0}) {
  var height = MediaQuery.of(context).size.height;
  return (height / divideBy) - reduceBy;
}

double percentWidth(double percent) {
  var size = Get.width;
  return size / 100 * percent;
}

double percentHeight(double percent) {
  var size = Get.height;
  return size / 100 * percent;
}

bool isSmallScreen(BuildContext context) {
  return MediaQuery.of(context).size.width < mediumScreenSize;
}

bool isMediumScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= mediumScreenSize && MediaQuery.of(context).size.width < largeScreenSize;
}

bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > largeScreenSize;
}

bool isCustomSize(BuildContext context) {
  return MediaQuery.of(context).size.width <= customScreenSize && MediaQuery.of(context).size.width >= mediumScreenSize;
}
