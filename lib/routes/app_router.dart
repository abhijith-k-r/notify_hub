import 'package:go_router/go_router.dart';
import '../features/home/view/screens/home_screen.dart';
import '../features/notification/view/screens/notification_screen.dart';
import 'app_routes.dart';

/// Centralized application router configuration using GoRouter.
class AppRouter {
  const AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.notifications,
        builder: (context, state) => const NotificationScreen(),
      ),
    ],
  );
}
