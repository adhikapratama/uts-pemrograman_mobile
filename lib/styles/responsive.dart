import 'package:flutter/material.dart';

const double mobileMax = 440;
const double tabletMax = 1000;

double gridMaxCrossAxisExtent(BuildContext ctx) {
  final w = MediaQuery.of(ctx).size.width;
  if (w <= mobileMax) return 360;
  if (w <= 700) return 300;
  if (w <= tabletMax) return 260;
  return 220;
}

bool isMobile(BuildContext ctx) => MediaQuery.of(ctx).size.width <= mobileMax;
bool isTablet(BuildContext ctx) =>
    MediaQuery.of(ctx).size.width > mobileMax &&
    MediaQuery.of(ctx).size.width <= tabletMax;
bool isDesktop(BuildContext ctx) => MediaQuery.of(ctx).size.width > tabletMax;

double horizontalPadding(BuildContext ctx) {
  final w = MediaQuery.of(ctx).size.width;
  if (w <= mobileMax) return 12;
  if (w <= 900) return 16;
  return 24;
}

/// image size for product detail
double detailImageSize(BuildContext ctx) {
  final w = MediaQuery.of(ctx).size.width;
  if (w <= mobileMax) return w * 0.6;
  if (w <= tabletMax) return w * 0.45;
  return w * 0.35;
}
