import 'dart:ui';

import 'package:intl/intl.dart';
import 'dart:math' as math;

import 'package:jakone_app/app/locales/localization_service.dart';

String customDateFormat(DateTime date, {String? format}) {
  DateFormat formatter = DateFormat(format ?? 'dd MMMM yyyy', LocalizationService().getCurrentLocale().toLanguageTag());
  return formatter.format(date.toLocal());
}

String customSimpleDateFormat(DateTime date, {String? format}) {
  DateFormat formatter = DateFormat(format ?? 'dd-MM-yyyy', LocalizationService().getCurrentLocale().toLanguageTag());
  return formatter.format(date.toLocal());
}

String customCurrency(dynamic nominal, {String symbol = '', int? decimalDigits}) {
  final formatCurrency =
      NumberFormat.currency(symbol: symbol, decimalDigits: decimalDigits ?? 0, locale: LocalizationService().getCurrentLocale().toLanguageTag());

  if (!isNumeric(nominal.toString())) return nominal.toString();

  return formatCurrency.format(double.parse(nominal.toString()));
}

bool isNumeric(String? s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

String convertRunTime(int minutes) {
  Duration runtime = Duration(hours: 2, minutes: 30); // Example runtime

  int hours = runtime.inHours;
  int minutes = runtime.inMinutes.remainder(60);

  if (hours > 0) {
    return '${hours}h ${minutes}m';
  }
  return '${minutes}m';
}

//color generator
Color randomColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

String getinitialString(String name) => name.isNotEmpty ? name.trim().split(RegExp(' +')).map((s) => s[0]).take(2).join() : '';
