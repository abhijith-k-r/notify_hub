import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notify_hub/features/home/view/widgets/home_header.dart';
import 'package:notify_hub/features/home/view_model/home_cubit.dart';
import 'package:notify_hub/features/home/view_model/home_state.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';

/// Search input bar with filter button matching Figma mockup.
class HomeSearchBar extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const HomeSearchBar({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 46,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: AppColors.searchFieldBg,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: onChanged,
                          style: AppTypography.bodyMedium,
                          decoration: InputDecoration(
                            hintText: 'Search for products/stores',
                            hintStyle: AppTypography.caption.copyWith(
                              fontSize: 13,
                            ),
                            border: InputBorder.none,
                            isDense: true,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.search_rounded,
                        color: AppColors.primary,
                        size: 22,
                      ),
                    ],
                  ),
                ),
              ),
              AppSpacing.gapW12,
              // ! NotificationBell
              buildNotificationBell(context, state.unreadNotificationsCount),
              AppSpacing.gapW12,
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/images/image.png',)
               
              ),
            ],
          ),
        );
      },
    );
  }
}
