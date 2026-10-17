import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notify_hub/core/constants/app_assets.dart';
import 'package:notify_hub/core/widgets/app_image.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../routes/app_routes.dart';
import '../../view_model/bottom_nav_cubit.dart';

/// Bottom navigation bar displaying Home, Cart, My Order, and Account.
class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key});

  void _onTabTapped(BuildContext context, int index) {
    context.read<BottomNavCubit>().changeTab(index);
    switch (index) {
      case 0:
        context.go(AppRoutes.home);
        break;
      case 1:
        context.go(AppRoutes.cart);
        break;
      case 2:
        context.go(AppRoutes.myOrder);
        break;
      case 3:
        context.go(AppRoutes.account);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, currentIndex) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.background,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 6,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => _onTabTapped(context, index),
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.textSecondary,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            items: [
              BottomNavigationBarItem(
                icon: AppImage(
                  height: 25,
                  path: AppAssets.home,
                  color: currentIndex == 0
                      ? AppColors.primary
                      : AppColors.textSecondary,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: AppImage(
                  height: 25,
                  path: AppAssets.cart,
                  color: currentIndex == 1 ? AppColors.primary : null,
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: AppImage(
                  height: 25,
                  path: AppAssets.myOrder,
                  color: currentIndex == 2 ? AppColors.primary : null,
                ),
                label: 'My Order',
              ),
              BottomNavigationBarItem(
                icon: AppImage(
                  height: 25,
                  path: AppAssets.profile,
                  color: currentIndex == 3 ? AppColors.primary : null,
                ),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}
