import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/app_app_bar.dart';
import '../../../../core/widgets/app_empty_view.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../core/widgets/app_loading_view.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../view_model/notification_cubit.dart';
import '../../view_model/notification_state.dart';
import '../widgets/notification_tile.dart';

/// Screen displaying the list of notifications with state handling.
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
    context.read<NotificationCubit>().loadNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const AppAppBar(title: 'Notifications'),
      body: BlocBuilder<NotificationCubit, NotificationState>(
        builder: (context, state) {
          if (state is NotificationLoading) {
            return const AppLoadingView(message: 'Loading notifications...');
          }

          if (state is NotificationError) {
            return AppErrorView(
              message: state.message,
              onRetry: () =>
                  context.read<NotificationCubit>().loadNotifications(),
            );
          }

          if (state is NotificationLoaded) {
            if (state.notifications.isEmpty) {
              return const AppEmptyView();
            }

            return RefreshIndicator(
              onRefresh: () =>
                  context.read<NotificationCubit>().refreshNotifications(),
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: state.notifications.length,
                itemBuilder: (context, index) {
                  final item = state.notifications[index];
                  return NotificationTile(notification: item);
                },
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
