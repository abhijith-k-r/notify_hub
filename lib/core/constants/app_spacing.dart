import 'package:flutter/material.dart';

/// Uniform spacing, padding, and layout dimension tokens.
class AppSpacing {
  const AppSpacing._();

  // Spacing values
  static const double s2 = 2.0;
  static const double s4 = 4.0;
  static const double s8 = 8.0;
  static const double s12 = 12.0;
  static const double s16 = 16.0;
  static const double s20 = 20.0;
  static const double s24 = 24.0;
  static const double s32 = 32.0;

  // Vertical Gaps
  static const SizedBox gapH2 = SizedBox(height: s2);
  static const SizedBox gapH4 = SizedBox(height: s4);
  static const SizedBox gapH8 = SizedBox(height: s8);
  static const SizedBox gapH12 = SizedBox(height: s12);
  static const SizedBox gapH16 = SizedBox(height: s16);
  static const SizedBox gapH20 = SizedBox(height: s20);
  static const SizedBox gapH24 = SizedBox(height: s24);
  static const SizedBox gapH32 = SizedBox(height: s32);

  // Horizontal Gaps
  static const SizedBox gapW2 = SizedBox(width: s2);
  static const SizedBox gapW4 = SizedBox(width: s4);
  static const SizedBox gapW8 = SizedBox(width: s8);
  static const SizedBox gapW12 = SizedBox(width: s12);
  static const SizedBox gapW16 = SizedBox(width: s16);
  static const SizedBox gapW20 = SizedBox(width: s20);

  // Border Radii
  static const double radiusS = 4.0;
  static const double radiusM = 8.0;
  static const double radiusL = 12.0;
  static const double radiusXL = 16.0;

  // Screen Padding
  static const EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: 16.0);
}
