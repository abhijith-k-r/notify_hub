import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/widgets/account_view.dart';
import '../core/widgets/cart_view.dart';
import '../core/widgets/my_order_view.dart';
import '../features/home/view/screens/home_screen.dart';
import '../features/notification/view/screens/notification_screen.dart';
import 'app_routes.dart';

class AppRouter {
  const AppRouter._();

  static GoRouter get router => createRouter();

  static CustomTransitionPage<void> _buildPageWithTransition({
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 300),
      reverseTransitionDuration: const Duration(milliseconds: 250),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final slideAnimation =
            Tween<Offset>(
              begin: const Offset(0.04, 0),
              end: Offset.zero,
            ).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
            );

        return FadeTransition(
          opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
          child: SlideTransition(position: slideAnimation, child: child),
        );
      },
    );
  }

  static GoRouter createRouter([String initialLocation = AppRoutes.home]) {
    return GoRouter(
      initialLocation: initialLocation,
      routes: [
        GoRoute(
          path: AppRoutes.home,
          pageBuilder: (context, state) =>
              _buildPageWithTransition(state: state, child: const HomeScreen()),
        ),
        GoRoute(
          path: AppRoutes.cart,
          pageBuilder: (context, state) =>
              _buildPageWithTransition(state: state, child: const CartView()),
        ),
        GoRoute(
          path: AppRoutes.myOrder,
          pageBuilder: (context, state) => _buildPageWithTransition(
            state: state,
            child: const MyOrderView(),
          ),
        ),
        GoRoute(
          path: AppRoutes.account,
          pageBuilder: (context, state) => _buildPageWithTransition(
            state: state,
            child: const AccountView(),
          ),
        ),
        GoRoute(
          path: AppRoutes.notifications,
          pageBuilder: (context, state) => _buildPageWithTransition(
            state: state,
            child: const NotificationScreen(),
          ),
        ),
      ],
    );
  }
}
