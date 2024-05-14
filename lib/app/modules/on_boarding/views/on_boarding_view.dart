import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/routes/app_pages.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';
import 'package:jakone_app/app/widget/custom_elevated_button.dart';
import 'package:jakone_app/app/widget/custom_indicator.dart';
import 'package:jakone_app/app/widget/custom_outlined_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: radiusAllCircle),
                      child: ClipRRect(
                        borderRadius: radiusAllCircle,
                        child: Wrap(
                          spacing: 16,
                          children: [
                            Image.asset(flagEng, height: 24),
                            Image.asset(flagId, height: 24),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: radiusAllCircle),
                      child: ClipRRect(
                        borderRadius: radiusAllCircle,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          child: Wrap(
                            spacing: 8,
                            children: [
                              const Icon(Icons.payment_rounded, size: 14),
                              Image.asset(jakCard, height: 14),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CarouselSlider(
                        items: List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(child: AspectRatio(aspectRatio: 1 / 1, child: Image.asset(onboard))),
                                const SizedBox(height: 8),
                                GradientText(
                                  'Explore Jakarta with Jakarta Tourist Pass',
                                  style: context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                                  gradientDirection: GradientDirection.ttb,
                                  colors: const [
                                    Color(0xFFFF4747),
                                    Color(0xFFFC9842),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 1,
                            viewportFraction: 1,
                            onPageChanged: (value, reason) {
                              controller.activeIndex(value);
                            }),
                      ),
                      const SizedBox(height: 16),
                      CustomIndicator(activeIndex: controller.activeIndex.value, count: 3),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: CustomElevatedButton(
                          onPressed: () {
                            Get.offAllNamed(Routes.HOME);
                          },
                          child: const Center(
                            child: Text(
                              'Continue as a Guest',
                              style: TextStyle(color: white, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: CustomOutlinedButton(
                          onPressed: () {
                            Get.offAllNamed(Routes.HOME);
                          },
                          child: const Center(
                            child: Text(
                              'Continue as a Guest',
                              style: TextStyle(color: primaryRed, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Bounceable(
        onTap: () {},
        child: Image.asset(
          help,
          height: 80,
        ),
      ),
    );
  }
}
