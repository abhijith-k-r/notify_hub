import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/app_button.dart';
import 'nearby_store_card.dart';

/// "Nearby stores" section with merchant cards and "View all stores" button.
class NearbyStoresSection extends StatelessWidget {
  const NearbyStoresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nearby stores',
                style: AppTypography.titleSmall.copyWith(fontSize: 17),
              ),
              Text(
                'See all',
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          AppSpacing.gapH12,
          const NearbyStoreCard(
            name: 'Freshly Baker',
            cuisine: 'Sweets, North Indian',
            distance: 'Site No - 1  |  6.4 kms',
          ),
          AppSpacing.gapH12,
          const NearbyStoreCard(
            name: 'Daily Fresh Mart',
            cuisine: 'Groceries, Daily Needs',
            distance: 'Market 2  |  3.2 kms',
            rating: '4.5',
            eta: '25 mins',
          ),
          AppSpacing.gapH20,
          Center(
            child: AppButton(
              label: 'View all stores',
              onPressed: () {},
              backgroundColor: AppColors.primaryLight,
              width: 220,
              height: 44,
              borderRadius: 10,
            ),
          ),
        ],
      ),
    );
  }
}
