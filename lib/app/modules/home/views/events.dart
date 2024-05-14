import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/helper/screen_utils.dart';
import 'package:jakone_app/app/modules/home/controllers/home_controller.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';
import 'package:jakone_app/app/widget/custom_elevated_button.dart';
import 'package:jakone_app/app/widget/custom_title.dart';

class Events extends GetView<HomeController> {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(
          imageIcon: iconCalendar,
          title: 'Events in Jakarta',
          subtitle: 'don\'t miss the current events',
          onPressed: () {},
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 16,
            children: [
              ...List.generate(
                10,
                (index) => Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: radiusAllMedium,
                    gradient: LinearGradient(
                      colors: [
                        primaryRed,
                        primaryYellow.withOpacity(0.3),
                        primaryYellow.withOpacity(0.1),
                        primaryYellow.withOpacity(0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: SizedBox(
                    width: 260,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: white, width: 3), borderRadius: radiusAllMedium),
                          child: ClipRRect(
                            borderRadius: radiusAllMedium,
                            child: AspectRatio(
                              aspectRatio: 4 / 3,
                              child: Image.asset(
                                events,
                                width: percentWidth(100),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomElevatedButton(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              'More Information',
                              style: context.textTheme.bodySmall!.copyWith(color: white, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
