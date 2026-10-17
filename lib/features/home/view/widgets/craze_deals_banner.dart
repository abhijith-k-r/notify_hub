import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/app_image.dart';

/// "Craze deals" supermarket banner matching Figma design.
class CrazeDealsBanner extends StatelessWidget {
  const CrazeDealsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Craze deals',
            style: AppTypography.titleSmall.copyWith(fontSize: 17),
          ),
          AppSpacing.gapH12,
           SizedBox(
            height: 170,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              separatorBuilder: (_, index) => AppSpacing.gapW12,
              itemBuilder: (_, index) =>  crazeDealsBannerContainer(),
            ),
          ),
          
        ],
      ),
    );
  }

  Container crazeDealsBannerContainer() {
    return Container(
      height: 165,
      width: 320,
      decoration: BoxDecoration(
        color: AppColors.darkCard,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(10),
              ),
              child: const AppImage(
                path: AppAssets.crazeDeal,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 190,
                  child: Text(
                    'Customer favourite top supermarkets',
                    style: AppTypography.titleSmall.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                AppSpacing.gapH8,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Explore',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.accentOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AppSpacing.gapW4,
                    const Icon(
                      Icons.arrow_forward_rounded,
                      color: AppColors.accentOrange,
                      size: 14,
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
