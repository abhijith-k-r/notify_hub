import 'package:flutter/material.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/utils/date_time_formatter.dart';
import '../../model/notification_model.dart';

/// Renders the title, multiline description, and timestamp of a notification.
class NotificationDetails extends StatelessWidget {
  final NotificationModel notification;

  const NotificationDetails({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    final String relativeTime =
        DateTimeFormatter.toRelativeTime(notification.timestamp);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          notification.title,
          style: AppTypography.titleSmall,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        AppSpacing.gapH4,
        Text(
          notification.body,
          style: AppTypography.bodyMedium,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        AppSpacing.gapH8,
        Text(
          relativeTime,
          style: AppTypography.caption,
        ),
      ],
    );
  }
}
