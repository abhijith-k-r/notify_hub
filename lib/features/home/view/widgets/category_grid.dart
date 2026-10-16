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
                icon: Icons.delivery_dining_rounded,
                badge: '10% OFF',
              ),
              CategoryItem(
                label: 'Medicines',
                icon: Icons.medical_services_outlined,
                badge: '10% OFF',
              ),
              CategoryItem(
                label: 'Pet Supplies',
                icon: Icons.pets_rounded,
                badge: '10% OFF',
              ),
              CategoryItem(
                label: 'Gifts',
                icon: Icons.card_giftcard_rounded,
              ),
              CategoryItem(
                label: 'Meat',
                icon: Icons.set_meal_rounded,
              ),
              CategoryItem(
                label: 'Cosmetic',
                icon: Icons.brush_outlined,
              ),
              CategoryItem(
                label: 'Stationery',
                icon: Icons.edit_note_rounded,
              ),
              CategoryItem(
                label: 'Stores',
                icon: Icons.storefront_rounded,
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
