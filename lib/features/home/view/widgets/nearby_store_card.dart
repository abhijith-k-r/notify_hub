import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/app_image.dart';
import 'nearby_store_badge_row.dart';

/// Card component for stores in the Nearby Stores section.
class NearbyStoreCard extends StatelessWidget {
  final String name;
  final String cuisine;
  final String distance;
  final String rating;
  final String eta;

  const NearbyStoreCard({
    super.key,
    this.name = 'Freshly Baker',
    this.cuisine = 'Sweets, North Indian',
    this.distance = 'Site No - 1  |  6.4 kms',
    this.rating = '4.1',
    this.eta = '45 mins',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.divider.withValues(alpha: 0.6)),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const AppImage(
                  path: AppAssets.storeFreshly,
                  width: 76,
                  height: 76,
                  fit: BoxFit.cover,
                ),
              ),
              AppSpacing.gapW12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: AppTypography.titleSmall.copyWith(fontSize: 15),
                    ),
                    AppSpacing.gapH4,
                    Text(cuisine, style: AppTypography.caption),
                    AppSpacing.gapH2,
                    Text(distance, style: AppTypography.caption),
                    AppSpacing.gapH4,
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF41529F).withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Top Store',
                        style: AppTypography.caption.copyWith(
                          color: const Color(0xFF41529F),
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        color: AppColors.starRating,
                        size: 16,
                      ),
                      AppSpacing.gapW2,
                      Text(
                        rating,
                        style: AppTypography.bodySmall.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.gapH4,
                  Text(
                    eta,
                    style: AppTypography.caption.copyWith(
                      color: AppColors.accentOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          AppSpacing.gapH12,
          Padding(
            padding: const EdgeInsets.only(left: 90,),
            child: const Divider(height: 1, color: AppColors.divider),
          ),
          AppSpacing.gapH8,
          const NearbyStoreBadgeRow(),
        ],
      ),
    );
  }
}
