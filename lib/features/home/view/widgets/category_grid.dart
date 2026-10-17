import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import 'category_item.dart';

/// Categories grid with title matching Figma home section.
class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What would you like to do today?',
            style: AppTypography.titleSmall.copyWith(fontSize: 17),
          ),
          AppSpacing.gapH16,
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 14,
            crossAxisSpacing: 8,
            childAspectRatio: 0.76,
            children: const [
              CategoryItem(
                label: 'Food Delivery',
                icon: 'assets/images/food_delivery.png',
                badge: '10% OFF',
              ),
              CategoryItem(
                label: 'Medicines',
                icon: 'assets/images/medicines.png',
                scale: 2,
                badge: '10% OFF',
              ),
              CategoryItem(
                label: 'Pet Supplies',
                icon: 'assets/images/pet_supplies.png',
                scale: 2,
                badge: '10% OFF',
              ),
              CategoryItem(
                label: 'Gifts',
                icon: 'assets/images/gifts.png',
                scale: 2,
              ),
              CategoryItem(
                label: 'Meat',
                icon: 'assets/images/meat.png',
                scale: 2,
              ),
              CategoryItem(
                label: 'Cosmetic',
                icon: 'assets/images/cosmetics.png',
                scale: 2,
              ),
              CategoryItem(
                label: 'Stationery',
                icon: 'assets/images/stationary.png',
                scale: 2,
              ),
              CategoryItem(
                label: 'Stores',
                icon: 'assets/images/stores.png',
                scale: 2,
                badge: '10% OFF',
              ),
            ],
          ),
          AppSpacing.gapH4,
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'More',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.primary,
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
