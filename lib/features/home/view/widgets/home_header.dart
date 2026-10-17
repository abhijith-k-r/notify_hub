import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../routes/app_routes.dart';
import '../../view_model/home_cubit.dart';
import '../../view_model/home_state.dart';

/// Top header bar displaying user location and notification icon with badge.
class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: [
              const Icon(Icons.location_on, color: AppColors.primary, size: 22),
              AppSpacing.gapW8,
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        state.userLocation,
                        style: AppTypography.titleSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.primary,
                      size: 20,
                    ),
                  ],
                ),
              ),
              // buildNotificationBell(context, state.unreadNotificationsCount),
            ],
          ),
        );
      },
    );
  }
}

Widget buildNotificationBell(BuildContext context, int unreadCount) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    onTap: () => context.push(AppRoutes.notifications),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            // color: AppColors.surfaceLight,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.notifications_outlined,
            color: AppColors.badgeRed,
            size: 30,
          ),
        ),
        if (unreadCount > 0)
          Positioned(
            right: 7,
            top: 4,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: AppColors.badgeRed,
                shape: BoxShape.circle,
              ),
              constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
              child: Text(
                '$unreadCount',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    ),
  );
}
