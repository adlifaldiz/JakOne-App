import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/helper/screen_utils.dart';
import 'package:jakone_app/app/modules/home/views/balance_card.dart';
import 'package:jakone_app/app/modules/home/views/events.dart';
import 'package:jakone_app/app/modules/home/views/menus.dart';
import 'package:jakone_app/app/modules/home/views/places.dart';
import 'package:jakone_app/app/theme/color_schemes.dart';
import 'package:jakone_app/app/widget/custom_icon_button.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          controller: controller.mainScrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Image.asset(logo, height: kToolbarHeight),
              expandedHeight: 220,
              actions: [
                CustomIconButton(
                    onPressed: () {},
                    child: Image.asset(
                      iconFile,
                      height: 18,
                    )),
                const SizedBox(width: 8),
                CustomIconButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.notifications_rounded,
                      size: 18,
                      color: white,
                    )),
                const SizedBox(width: 16),
              ],
              flexibleSpace: Obx(
                () => Stack(
                  children: [
                    AnimatedContainer(
                      duration: duration300,
                      padding: const EdgeInsets.only(left: 16, right: 16, top: kToolbarHeight + 16),
                      height: percentHeight(100),
                      margin: EdgeInsets.only(bottom: controller.balanceOpacity.value <= 0 ? 0 : 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(controller.balanceOpacity.value <= 0 ? 0 : 60)),
                        gradient: defaultGradientttb,
                      ),
                      child: Opacity(
                        opacity: controller.userOpacity.value,
                        child: SafeArea(
                          bottom: false,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    profile,
                                    height: 40,
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    'Good Morning,\nGuest',
                                    style: context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, color: white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Opacity(opacity: controller.balanceOpacity.value, child: const BalanceCard()),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Menus(),
                    SizedBox(height: 16),
                    SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        children: List.generate(
                          10,
                          (index) => Image.asset(
                            ebanner,
                            height: 120,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Places(),
                    SizedBox(height: 16),
                    Events(),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: Bounceable(
          onTap: () {},
          child: Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(border: Border.all(color: white, width: 4), gradient: defaultGradientttb, shape: BoxShape.circle),
            child: Image.asset(
              qris,
              width: 100,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: (value) => controller.currentIndex(value),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(iconHome, color: context.theme.colorScheme.primary, height: 22),
                  activeIcon: Image.asset(iconHome, height: 24),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Image.asset(iconAccount, color: context.theme.colorScheme.primary, height: 22),
                  activeIcon: Image.asset(iconAccount, height: 24),
                  label: 'Profile'),
            ],
          ),
        )

        //  Stack(
        //   alignment: Alignment.bottomCenter,
        //   children: [
        //     Container(
        //       padding: EdgeInsets.symmetric(vertical: 16),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        //         color: context.theme.colorScheme.surface,
        //         boxShadow: [
        //           BoxShadow(offset: Offset(0, -2), color: context.theme.colorScheme.shadow.withOpacity(0.2), blurRadius: 4),
        //         ],
        //       ),
        //       child: SafeArea(
        //         child: Row(
        //           children: [
        //             Expanded(
        //               child: Image.asset(
        //                 iconHome,
        //                 height: 24,
        //               ),
        //             ),
        //             Expanded(
        //               child: Image.asset(
        //                 iconAccount,
        //                 height: 24,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //     ClipOval(
        //       child: Container(
        //         margin: EdgeInsets.only(bottom: 16),
        //         padding: EdgeInsets.all(16),
        //         decoration: BoxDecoration(shape: BoxShape.circle, gradient: defaultGradientttb),
        //         child: Image.asset(
        //           qris,
        //           height: 20,
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        );
  }
}
