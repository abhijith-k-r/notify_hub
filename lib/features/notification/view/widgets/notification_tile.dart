import 'package:flutter/material.dart';
import 'package:notify_hub/features/notification/model/notification_model.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import 'notification_details.dart';
import 'notification_icon.dart';

/// Single notification card item matching Figma layout.
class NotificationTile extends StatelessWidget {
  final Datum  notification;
  final VoidCallback? onTap;

  const NotificationTile({
    super.key,
    required this.notification,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.divider, width: 0.8),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationIcon(imageName: notification.image),
            AppSpacing.gapW16,
            Expanded(
              child: NotificationDetails(notification: notification),
            ),
          ],
        ),
      ),
    );
  }
}
