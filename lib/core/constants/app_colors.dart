import 'package:flutter/material.dart';

/// Centralized application color palette derived directly from Figma tokens.
class AppColors {
  const AppColors._();

  // Primary brand colors
  static const Color primary = Color(0xFF06C25E);
  static const Color primaryLight = Color(0xFF29D177);
  static const Color accentOrange = Color(0xFFFF8918);
  static const Color purplePromo = Color(0xFF685BCB);

  // Background and surfaces
  static const Color background = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFF6F6F6);
  static const Color searchFieldBg = Color(0xFFEEEEEE);
  static const Color cardBg = Color(0xFFF2F2F2);
  static const Color mintBg = Color(0xFFE9FFFE);
  static const Color darkCard = Color(0xFF262626);

  // Text colors
  static const Color textPrimary = Color(0xFF323232);
  static const Color textSecondary = Color(0xFF7D7D7D);
  static const Color textMuted = Color(0xFF969696);
  static const Color textSubtle = Color(0xFF474747);
  static const Color textWhite = Color(0xFFFFFFFF);

  // Status and feedback
  static const Color badgeRed = Color(0xFFFF0000);
  static const Color starRating = Color(0xFFFFA000);
  static const Color divider = Color(0xFFE0E0E0);
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF2E7D32);
}
