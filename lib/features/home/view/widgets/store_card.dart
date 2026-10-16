import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/app_image.dart';

/// Single store card representing trending/nearby merchant.
class StoreCard extends StatelessWidget {
  final String name;
  final String cuisine;
  final String distance;
  final String rating;
  final String eta;

  const StoreCard({
    super.key,
    this.name = 'Mithas Bhandar',
    this.cuisine = 'Sweets, North Indian',
    this.distance = '6.4 kms',
    this.rating = '4.1',
    this.eta = '45 mins',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: const AppImage(
              path: AppAssets.storeMithas,
              width: 74,
              height: 74,
              fit: BoxFit.cover,
            ),
          ),
          AppSpacing.gapW12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: AppTypography.titleSmall.copyWith(fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                AppSpacing.gapH2,
                Text(cuisine, style: AppTypography.caption, maxLines: 1),
                AppSpacing.gapH2,
                Text(distance, style: AppTypography.caption, maxLines: 1),
                AppSpacing.gapH4,
                Row(
                  children: [
                    const Icon(Icons.star_rounded, color: AppColors.starRating, size: 16),
                    AppSpacing.gapW4,
                    Flexible(
                      child: Text(
                        '$rating  |  $eta',
                        style: AppTypography.caption.copyWith(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
