import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomIndicator extends StatelessWidget {
  final int activeIndex;
  final int count;
  const CustomIndicator({super.key, required this.activeIndex, required this.count});

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: count,
      effect: WormEffect(dotWidth: 8, dotHeight: 8, activeDotColor: primaryOrange, dotColor: context.theme.colorScheme.outlineVariant),
    );
  }
}
