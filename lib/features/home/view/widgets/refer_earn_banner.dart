import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/app_image.dart';

/// "Refer & Earn" promotional banner matching Figma mockup.
class ReferEarnBanner extends StatelessWidget {
  const ReferEarnBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 84,
        decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Refer & Earn',
                    style: AppTypography.titleSmall.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  AppSpacing.gapH4,
                  RichText(
                    text: TextSpan(
                      style: AppTypography.bodySmall.copyWith(
                        color: Colors.white.withValues(alpha: 0.9),
                        fontSize: 12,
                      ),
                      children: const [
                        TextSpan(text: 'Invite your friends & earn '),
                        TextSpan(
                          text: '15% off',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const AppImage(
              path: AppAssets.giftBox,
              width: 54,
              height: 54,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
