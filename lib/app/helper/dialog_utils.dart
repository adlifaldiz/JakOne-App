import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';

customSnackBar(String message, {bool isSuccess = true, bool isShortDuration = false, bool isDefault = false}) {
  if (!SnackbarController.isSnackbarBeingShown) {
    Get.rawSnackbar(
        snackPosition: isDefault ? SnackPosition.BOTTOM : SnackPosition.TOP,
        snackStyle: SnackStyle.FLOATING,
        messageText: Text(message,
            style: TextStyle(
                color: isDefault
                    ? white
                    : isSuccess
                        ? green3
                        : red8)),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        borderRadius: 10,
        duration: isShortDuration ? duration1s : duration3s,
        animationDuration: duration500,
        icon: Icon(Icons.error,
            color: isDefault
                ? white
                : isSuccess
                    ? green3
                    : red8),
        backgroundColor: isDefault
            ? lightBlackColor
            : isSuccess
                ? green05
                : red4,
        shouldIconPulse: false,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16));
  }
}
