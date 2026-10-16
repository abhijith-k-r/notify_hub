import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_image.dart';

/// Promotional banner card carousel matching Figma "Top picks for you".
class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Top picks for you',
            style: AppTypography.titleSmall.copyWith(fontSize: 17),
          ),
        ),
        AppSpacing.gapH12,
        SizedBox(
          height: 165,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              _buildCard(
                title: 'DISCOUNT\n25% ALL\nFRUITS',
                bgColor: AppColors.primary,
                imagePath: AppAssets.bannerFruits,
              ),
              AppSpacing.gapW16,
              _buildCard(
                title: 'DISCOUNT\n20% ALL\nVEGGIES',
                bgColor: AppColors.purplePromo,
                imagePath: AppAssets.bannerFruits,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCard({
    required String title,
    required Color bgColor,
    required String imagePath,
  }) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            top: 0,
            child: AppImage(
              path: imagePath,
              width: 150,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: AppTypography.bannerHeading),
                AppSpacing.gapH12,
                AppButton(
                  label: 'CHECK NOW',
                  onPressed: () {},
                  backgroundColor: AppColors.accentOrange,
                  height: 32,
                  borderRadius: 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
