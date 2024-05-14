import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jakone_app/app/locales/localization_service.dart';
import 'package:jakone_app/app/theme/theme.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalizationService(),
      locale: LocalizationService().getCurrentLocale(),
      fallbackLocale: LocalizationService.fallBackLocale,
      debugShowCheckedModeBanner: false,
      title: "JakOne Pay",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppTheme().light,
      darkTheme: AppTheme().dark,
      supportedLocales: LocalizationService.locales,
    );
  }
}
