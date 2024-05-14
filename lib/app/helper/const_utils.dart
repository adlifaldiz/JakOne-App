import 'package:flutter/material.dart';

import 'package:get/get.dart';

//images
const logo = 'assets/images/logo.png';
const ojk = 'assets/images/ojk.png';
const lps = 'assets/images/lps.png';
const help = 'assets/images/help.png';
const onboard = 'assets/images/onboard.png';
const flagEng = 'assets/images/flag_eng.png';
const flagId = 'assets/images/flag_id.png';
const jakCard = 'assets/images/jakcard.png';
const profile = 'assets/images/profile.png';
const ebanner = 'assets/images/e-banner.png';
const events = 'assets/images/events.png';
const place = 'assets/images/place.png';
const map = 'assets/images/map.png';
const qris = 'assets/images/qris.png';
//splash
const leftSplash = 'assets/images/splash/top.png';
const leftSplash2 = 'assets/images/splash/top2.png';
const rightBotSplash = 'assets/images/splash/right_bot.png';
const rightTopSplash = 'assets/images/splash/right_top.png';
//icon
const iconFile = 'assets/images/icons/file.png';
const iconAccount = 'assets/images/icons/account.png';
const iconCalendar = 'assets/images/icons/calendar.png';
const iconHome = 'assets/images/icons/home.png';
const iconLandmark = 'assets/images/icons/landmark.png';
//menus
const menusCredit = 'assets/images/menus/menu-credit.png';
const menusEvent = 'assets/images/menus/menu-event.png';
const menusMap = 'assets/images/menus/menu-map.png';
const menusWallet = 'assets/images/menus/menu-wallet.png';

//duration
const duration100 = Duration(milliseconds: 100);
const duration200 = Duration(milliseconds: 200);
const duration300 = Duration(milliseconds: 300);
const duration400 = Duration(milliseconds: 400);
const duration500 = Duration(milliseconds: 500);
const duration1s = Duration(seconds: 1);
const duration2s = Duration(seconds: 2);
const duration3s = Duration(seconds: 3);
const duration4s = Duration(seconds: 4);
const duration5s = Duration(seconds: 5);
const duration6s = Duration(seconds: 6);
const duration7s = Duration(seconds: 7);
const duration8s = Duration(seconds: 8);

const defaultGradient = LinearGradient(
  colors: [
    Color(0xFFFC9842),
    Color(0xFFFF4747),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
const defaultGradientttb = LinearGradient(
  colors: [
    Color(0xFFFF4747),
    Color(0xFFFC9842),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
const defaultGradientttb3 = LinearGradient(
  colors: [
    Color(0xFFFF4747),
    Color(0xFFFC9842),
    Color(0xFFFFF84B),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
const defaultGradient3 = LinearGradient(
  colors: [
    Color(0xFFFFF84B),
    Color(0xFFFC9842),
    Color(0xFFFF4747),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

//
const errText = 'Someting went wrong';
const successText = 'Success';

double contextToolbarHeight(BuildContext context) {
  return kToolbarHeight + context.mediaQueryPadding.top;
}

//borderRadius
BorderRadius radiusAllBig = BorderRadius.circular(16);
BorderRadius radiusAllMedium = BorderRadius.circular(10);
BorderRadius radiusAllSmall = BorderRadius.circular(8);
BorderRadius radiusAllExtraSmall = BorderRadius.circular(5);
BorderRadius radiusAllVerySmall = BorderRadius.circular(3);
BorderRadius radiusAllCircle = BorderRadius.circular(100);

//lorem
const loremIpsumText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
