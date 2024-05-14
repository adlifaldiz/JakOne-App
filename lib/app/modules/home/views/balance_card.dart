import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/helper/intl_formats.dart';
import 'package:jakone_app/app/helper/screen_utils.dart';
import 'package:jakone_app/app/modules/home/controllers/home_controller.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';
import 'package:jakone_app/app/widget/custom_elevated_button.dart';

class BalanceCard extends GetView<HomeController> {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 32),
        shape: RoundedRectangleBorder(borderRadius: radiusAllMedium),
        child: ClipRRect(
          borderRadius: radiusAllMedium,
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  Container(
                    height: percentHeight(100),
                    width: 16,
                    decoration: BoxDecoration(gradient: defaultGradientttb3),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Balance Account'),
                        Text(
                          customCurrency(0, symbol: 'Rp'),
                          style: context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '-',
                          style: context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    borderRadius: radiusAllExtraSmall,
                    child: Text(
                      'Top Up',
                      style: TextStyle(color: white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
