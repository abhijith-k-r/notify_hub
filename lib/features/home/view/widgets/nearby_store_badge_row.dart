import 'package:flutter/material.dart';
import 'package:notify_hub/core/constants/app_assets.dart';
import 'package:notify_hub/core/widgets/app_image.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';

/// Bottom offer, top store chip, and items available row for NearbyStoreCard.
class NearbyStoreBadgeRow extends StatelessWidget {
  final String offer;
  final String itemsAvailable;

  const NearbyStoreBadgeRow({
    super.key,
    this.offer = 'Upto 10% OFF',
    this.itemsAvailable = '3400+ items Available',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90),
      child: Row(
        children: [
          const AppImage(path: AppAssets.uptoOff, fit: BoxFit.cover, width: 15),
          AppSpacing.gapW4,
          Text(
            offer,
            style: AppTypography.caption.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.darkCard,
            ),
          ),
          AppSpacing.gapW8,
          const Spacer(),
          const AppImage(
            path: AppAssets.itemsAvailable,
            fit: BoxFit.cover,
            height: 15,
          ),

          AppSpacing.gapW4,
          Text(
            itemsAvailable,
            style: AppTypography.caption.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.darkCard,
            ),
          ),
        ],
      ),
    );
  }
}
