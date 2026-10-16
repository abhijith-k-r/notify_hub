import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_image.dart';

/// Renders the status icon/badge corresponding to the notification type.
class NotificationIcon extends StatelessWidget {
  final String imageName;

  const NotificationIcon({
    super.key,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    final String assetPath = _resolveAssetPath(imageName);

    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(6),
      child: Center(
        child: AppImage(
          path: assetPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  String _resolveAssetPath(String name) {
    if (name.contains('assigned')) return AppAssets.orderAssigned;
    if (name.contains('delivered')) return AppAssets.orderDelivered;
    if (name.contains('cancelled')) return AppAssets.orderCancelled;
    if (name.contains('marketplace')) return AppAssets.promoMarketplace;
    if (name.contains('notify')) return AppAssets.promoNotify;
    if (name.contains('support')) return AppAssets.supportPersonnel;
    if (name.contains('stock')) return AppAssets.outOfStock;
    return '${AppAssets.basePath}/$name';
  }
}
