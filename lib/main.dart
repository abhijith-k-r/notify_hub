import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'core/constants/app_colors.dart';
import 'core/widgets/app_toast.dart';
import 'features/home/view_model/bottom_nav_cubit.dart';
import 'features/home/view_model/home_cubit.dart';
import 'features/notification/view_model/notification_cubit.dart';
import 'routes/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const NotifyHubApp());
}

class NotifyHubApp extends StatefulWidget {
  const NotifyHubApp({super.key});

  @override
  State<NotifyHubApp> createState() => _NotifyHubAppState();
}

class _NotifyHubAppState extends State<NotifyHubApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AppRouter.createRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavCubit>(
          create: (_) => BottomNavCubit(),
        ),
        BlocProvider<HomeCubit>(
          create: (_) => HomeCubit(),
        ),
        BlocProvider<NotificationCubit>(
          create: (_) => NotificationCubit(),
        ),
      ],
      child: MaterialApp.router(
        title: 'NotifyHub',
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: AppToast.messengerKey,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.background,
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary,
            primary: AppColors.primary,
          ),
        ),
        routerConfig: _router,
      ),
    );
  }
}
