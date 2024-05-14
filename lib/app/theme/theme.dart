import 'package:flutter/material.dart';
import 'package:jakone_app/app/helper/const_utils.dart';

import 'color_schemes.dart';

class AppTheme {
  // final BuildContext context;
  // AppTheme(this.context);

  // static MaterialColor myColor = stringToMaterialColor("008744");

  ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    checkboxTheme: checkboxThemeData(darkColorScheme),
    hoverColor: hoverColor(lightColorScheme),
    cardTheme: cardTheme(lightColorScheme),
    iconTheme: iconTheme(lightColorScheme),
    listTileTheme: listTileTheme(lightColorScheme),
    appBarTheme: appBarTheme(lightColorScheme),
    tabBarTheme: tabBarTheme(lightColorScheme),
    bottomAppBarTheme: bottomAppBarTheme(lightColorScheme),
    bottomNavigationBarTheme: bottomNavigationBarTheme(lightColorScheme),
    drawerTheme: drawerTheme(lightColorScheme),
    brightness: Brightness.light,
    textTheme: textTheme(lightColorScheme),
    fontFamily: 'Nunito',
    buttonTheme: buttonTheme(lightColorScheme),
    elevatedButtonTheme: elevatedButtonTheme(lightColorScheme),
    textButtonTheme: textButtonTheme(lightColorScheme),
    outlinedButtonTheme: outlinedButtonTheme(lightColorScheme),
    iconButtonTheme: iconButtonThemeData(lightColorScheme),
    dialogTheme: dialogTheme(darkColorScheme),
    bottomSheetTheme: bottomSheetTheme(lightColorScheme),
    floatingActionButtonTheme: floatingActionButtonThemeData(lightColorScheme),
    dataTableTheme: dataTableThemeData(lightColorScheme),
    expansionTileTheme: expanstionTileTheme(lightColorScheme),
    dividerTheme: dividerTheme(lightColorScheme),
    datePickerTheme: datePickerTheme(lightColorScheme),
  );

  ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    checkboxTheme: checkboxThemeData(darkColorScheme),
    hoverColor: hoverColor(darkColorScheme),
    cardTheme: cardTheme(darkColorScheme),
    iconTheme: iconTheme(darkColorScheme),
    listTileTheme: listTileTheme(darkColorScheme),
    appBarTheme: appBarTheme(darkColorScheme),
    tabBarTheme: tabBarTheme(darkColorScheme),
    bottomAppBarTheme: bottomAppBarTheme(darkColorScheme),
    bottomNavigationBarTheme: bottomNavigationBarTheme(darkColorScheme),
    drawerTheme: drawerTheme(darkColorScheme),
    brightness: Brightness.dark,
    textTheme: textTheme(darkColorScheme),
    fontFamily: 'Nunito',
    buttonTheme: buttonTheme(darkColorScheme),
    elevatedButtonTheme: elevatedButtonTheme(darkColorScheme),
    textButtonTheme: textButtonTheme(darkColorScheme),
    outlinedButtonTheme: outlinedButtonTheme(darkColorScheme),
    iconButtonTheme: iconButtonThemeData(darkColorScheme),
    dialogTheme: dialogTheme(darkColorScheme),
    bottomSheetTheme: bottomSheetTheme(darkColorScheme),
    floatingActionButtonTheme: floatingActionButtonThemeData(darkColorScheme),
    dataTableTheme: dataTableThemeData(darkColorScheme),
    expansionTileTheme: expanstionTileTheme(darkColorScheme),
    dividerTheme: dividerTheme(darkColorScheme),
    datePickerTheme: datePickerTheme(darkColorScheme),
  );
}

DatePickerThemeData datePickerTheme(ColorScheme colorScheme) {
  return DatePickerThemeData(
    backgroundColor: colorScheme.background,
    surfaceTintColor: colorScheme.background,
  );
}

DialogTheme dialogTheme(ColorScheme colorScheme) {
  return DialogTheme(
    backgroundColor: colorScheme.background,
    surfaceTintColor: colorScheme.background,
    shape: RoundedRectangleBorder(
      borderRadius: radiusAllMedium,
    ),
  );
}

DividerThemeData dividerTheme(ColorScheme colorScheme) {
  return DividerThemeData(color: colorScheme.outlineVariant);
}

ExpansionTileThemeData expanstionTileTheme(ColorScheme colorScheme) {
  return ExpansionTileThemeData(
    textColor: colorScheme.primary,
    iconColor: colorScheme.primary,
    collapsedTextColor: colorScheme.onSurface,
    collapsedIconColor: colorScheme.onSurface,
  );
}

DataTableThemeData dataTableThemeData(ColorScheme colorScheme) {
  return const DataTableThemeData(dividerThickness: 0, headingRowHeight: 40);
}

FloatingActionButtonThemeData floatingActionButtonThemeData(ColorScheme colorScheme) {
  return const FloatingActionButtonThemeData();
}

BottomSheetThemeData bottomSheetTheme(ColorScheme colorScheme) {
  return BottomSheetThemeData(
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    backgroundColor: colorScheme.surface,
    surfaceTintColor: colorScheme.surface,
  );
}

ButtonThemeData? buttonTheme(ColorScheme colorScheme) {
  return ButtonThemeData(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    shape: RoundedRectangleBorder(side: BorderSide(color: colorScheme.primary)),
  );
}

OutlinedButtonThemeData? outlinedButtonTheme(ColorScheme colorScheme) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: colorScheme.primary),
      foregroundColor: colorScheme.primary,
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(side: BorderSide(color: colorScheme.outline.withOpacity(0.6)), borderRadius: radiusAllMedium),
    ),
  );
}

IconButtonThemeData? iconButtonThemeData(ColorScheme colorScheme) {
  return IconButtonThemeData(
    style: IconButton.styleFrom(
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );
}

TextButtonThemeData? textButtonTheme(ColorScheme colorScheme) {
  return TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      foregroundColor: colorScheme.onSurface,
    ),
  );
}

ElevatedButtonThemeData? elevatedButtonTheme(ColorScheme colorScheme) {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.surface,
      // textStyle: TextStyle( fontWeight: FontWeight.w600),
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
  );
}

TextTheme? textTheme(ColorScheme colorScheme) {
  return TextTheme(
    // displayLarge: TextStyle(fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    // displayMedium: TextStyle(fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    // displaySmall: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
    // headlineMedium: TextStyle(fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    // headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
    // titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    // titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    // titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    // bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    // bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    // labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    bodySmall: TextStyle(color: colorScheme.outline),
    // labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}

CardTheme? cardTheme(ColorScheme colorScheme) {
  return CardTheme(
      margin: EdgeInsets.zero,
      surfaceTintColor: transparentColor,
      color: colorScheme.surface,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: radiusAllMedium));
}

IconThemeData? iconTheme(ColorScheme colorScheme) {
  return IconThemeData(color: colorScheme.onSurface);
}

ListTileThemeData? listTileTheme(ColorScheme colorScheme) {
  return ListTileThemeData(
      selectedTileColor: colorScheme.primary.withOpacity(0.3),
      selectedColor: colorScheme.onSurface,
      iconColor: colorScheme.onSurface,
      subtitleTextStyle: TextStyle(color: colorScheme.outline),
      shape: RoundedRectangleBorder(borderRadius: radiusAllMedium));
}

AppBarTheme? appBarTheme(ColorScheme colorScheme) {
  return AppBarTheme(
    surfaceTintColor: colorScheme.background,
    backgroundColor: colorScheme.background,
    centerTitle: false,
    shadowColor: colorScheme.outlineVariant,
  );
}

TabBarTheme? tabBarTheme(ColorScheme colorScheme) {
  return TabBarTheme(
    labelColor: colorScheme.primary,
    indicatorColor: colorScheme.primary,
    unselectedLabelColor: colorScheme.outline,
    unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
    labelStyle: const TextStyle(fontWeight: FontWeight.w500),
  );
}

BottomAppBarTheme? bottomAppBarTheme(ColorScheme colorScheme) {
  return null;
}

BottomNavigationBarThemeData? bottomNavigationBarTheme(ColorScheme colorScheme) {
  return BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: colorScheme.primary),
      selectedLabelStyle: TextStyle(color: colorScheme.primary, fontSize: 12),
      unselectedIconTheme: IconThemeData(color: colorScheme.outline.withOpacity(0.6)),
      unselectedLabelStyle: TextStyle(color: colorScheme.outline.withOpacity(0.6)),
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.outline.withOpacity(0.6));
}

DrawerThemeData? drawerTheme(ColorScheme colorScheme) {
  return null;
}

CheckboxThemeData? checkboxThemeData(ColorScheme colorScheme) {
  return null;
}

Color? hoverColor(ColorScheme colorScheme) {
  return null;
}
