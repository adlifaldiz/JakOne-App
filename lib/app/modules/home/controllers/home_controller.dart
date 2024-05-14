import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var mainScrollController = ScrollController();
  var scrollController = ScrollController();
  var placeOpacity = 1.0.obs;

  var balanceOpacity = 1.0.obs;
  var userOpacity = 1.0.obs;

  var currentIndex = 0.obs;

  @override
  void onInit() {
    mainScrollController.addListener(_onScrollMain);
    scrollController.addListener(_onScroll);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.onClose();
  }

  void _onScroll() {
    // Adjust the opacity based on the scroll offset
    double offset = scrollController.offset;
    placeOpacity.value = (1 - (offset / 200)).clamp(0.0, 1.0);
  }

  void _onScrollMain() {
    // Adjust the opacity based on the scroll offset
    double offset = mainScrollController.offset;
    balanceOpacity.value = (1 - (offset / 100)).clamp(0.0, 1.0);
    userOpacity.value = (1 - (offset / 57)).clamp(0.0, 1.0);
  }
}
