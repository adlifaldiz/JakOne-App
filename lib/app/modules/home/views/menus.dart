import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/modules/home/controllers/home_controller.dart';
import 'package:jakone_app/app/widget/custom_menu_button.dart';

class Menus extends GetView<HomeController> {
  const Menus({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
          CustomMenuButton(
            onPressed: () {},
            spacingBetweenChild: 16,
            horizontalPadding: 32,
            rowPerLength: 4,
            useRatio1: true,
            image: Image.asset(menusMap),
            label: 'Explore Jakarta',
          ),
          CustomMenuButton(
            onPressed: () {},
            spacingBetweenChild: 16,
            horizontalPadding: 32,
            rowPerLength: 4,
            useRatio1: true,
            image: Image.asset(menusWallet),
            label: 'Top Up JakCard',
          ),
          CustomMenuButton(
            onPressed: () {},
            spacingBetweenChild: 16,
            horizontalPadding: 32,
            rowPerLength: 4,
            useRatio1: true,
            image: Image.asset(menusCredit),
            label: 'JakCard Balance',
          ),
          CustomMenuButton(
            onPressed: () {},
            spacingBetweenChild: 16,
            horizontalPadding: 32,
            rowPerLength: 4,
            useRatio1: true,
            image: Image.asset(menusEvent),
            label: 'Event',
          ),
        ],
      ),
    );
  }
}
