import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/modules/home/controllers/home_controller.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';
import 'package:jakone_app/app/widget/custom_elevated_button.dart';
import 'package:jakone_app/app/widget/custom_title.dart';

class Places extends GetView<HomeController> {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(
          imageIcon: iconLandmark,
          title: 'Let\'s Go with Jakarta Tourist Pass',
          subtitle: 'a place not to be missed',
          onPressed: () {},
        ),
        SizedBox(height: 8),
        Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: duration300,
                top: 0,
                left: controller.placeOpacity.value < 0.8 ? 0 : 30,
                child: Opacity(
                  opacity: controller.placeOpacity.value,
                  child: SizedBox(
                    height: 220,
                    width: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Did You\nKnow?',
                          textAlign: TextAlign.center,
                          style: context.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 8),
                        Image.asset(
                          map,
                          height: 80,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              controller: controller.scrollController,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 16,
                children: [
                  ...List.generate(
                    10,
                    (index) => Card(
                      margin: EdgeInsets.only(left: index.isEqual(0) ? 160 : 0),
                      child: ClipRRect(
                        borderRadius: radiusAllMedium,
                        child: SizedBox(
                          width: 150,
                          height: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.asset(
                                    place,
                                    fit: BoxFit.cover,
                                  )),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ancol Entrance Gate',
                                        style: context.textTheme.bodySmall!
                                            .copyWith(color: context.theme.colorScheme.onSurface, fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 4),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: CustomElevatedButton(
                                            padding: EdgeInsets.symmetric(horizontal: 8),
                                            child: Text(
                                              'Detail',
                                              style: context.textTheme.bodySmall!.copyWith(color: white, fontWeight: FontWeight.w600),
                                            )),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
