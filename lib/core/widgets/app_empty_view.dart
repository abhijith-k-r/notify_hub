import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import '../constants/app_typography.dart';

/// Reusable empty state view when no notifications or data are available.
class AppEmptyView extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const AppEmptyView({
    super.key,
    this.title = 'No Notifications Yet',
    this.subtitle = 'We will notify you once updates or orders are posted.',
    this.icon = Icons.notifications_none_rounded,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.08),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 48, color: AppColors.primary),
            ),
            AppSpacing.gapH16,
            Text(title, style: AppTypography.titleSmall),
            AppSpacing.gapH8,
            Text(
              subtitle,
              style: AppTypography.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
