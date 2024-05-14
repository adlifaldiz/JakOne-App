import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'en_US.dart';
import 'in_ID.dart';

class LocalizationService extends Translations {
  final storage = GetStorage();
  static final locale = Locale('en');
  static final fallBackLocale = Locale('en');
  static final langs = ['English', 'Indonesia'];
  static final locales = [
    Locale('en'),
    Locale('id'),
  ];
  @override
  Map<String, Map<String, String>> get keys => {
        'en': EN,
        'id': ID,
      };

  void changeLocale(String lang) {
    final locale = getLocaleFromLanguage(lang);
    storage.write('lng', lang);
    Get.updateLocale(locale);
  }

  Locale getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale!;
  }

  Locale getCurrentLocale() {
    Locale defaultLocale;
    if (storage.read('lng') != null) {
      final locale = getLocaleFromLanguage(storage.read('lng'));
      defaultLocale = locale;
    } else {
      defaultLocale = Locale('en');
    }
    return defaultLocale;
  }

  String getCurrentLang() {
    return storage.read('lng') ?? 'English';
  }
}
