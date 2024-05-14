import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFC9842),
              Color(0xFFFF4747),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Obx(
          () => AnimatedOpacity(
            duration: duration500,
            opacity: controller.isVisible.value ? 1 : 0,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    leftSplash,
                    height: 260,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 50,
                  child: Image.asset(
                    leftSplash2,
                    height: 80,
                  ),
                ),
                Positioned(
                  bottom: 70,
                  right: 0,
                  child: Image.asset(
                    rightTopSplash,
                    height: 360,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    rightBotSplash,
                    height: 80,
                  ),
                ),
                Center(
                  child: Image.asset(
                    logo,
                    height: 100,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            Image.asset(ojk, height: 24),
                            Image.asset(lps, height: 24),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'powered by Bank DKI\n2023',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
