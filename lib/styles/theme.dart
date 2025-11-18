import 'package:flutter/material.dart';

class AppColors {
  static const Color yellow = Color(0xFFFFC107);
  static const Color black = Color(0xFF0B0B0B);
  static const Color white = Colors.white;
  static const Color bg = Color(0xFFF6F7FB);
  static const Color muted = Color(0xFF9AA0A6);
  static const Color card = Color(0xFFFFFFFF);
}

class AppText {
  static TextStyle headline(BuildContext ctx) {
    final scale = MediaQuery.of(ctx).textScaleFactor;
    return TextStyle(
      fontSize: 20 * scale,
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    );
  }

  static TextStyle subtitle(BuildContext ctx) {
    final scale = MediaQuery.of(ctx).textScaleFactor;
    return TextStyle(fontSize: 14 * scale, color: Colors.black87);
  }

  static TextStyle small(BuildContext ctx) {
    final scale = MediaQuery.of(ctx).textScaleFactor;
    return TextStyle(fontSize: 12 * scale, color: AppColors.muted);
  }
}

ThemeData buildAppTheme() {
  return ThemeData(
    primaryColor: AppColors.yellow,
    scaffoldBackgroundColor: AppColors.bg,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.black,
      iconTheme: IconThemeData(color: AppColors.yellow),
      titleTextStyle: TextStyle(
        color: AppColors.yellow,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      elevation: 0,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.yellow),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
