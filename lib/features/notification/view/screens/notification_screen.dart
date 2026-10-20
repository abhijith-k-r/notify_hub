import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notify_hub/core/widgets/app_app_bar.dart';
import 'package:notify_hub/core/widgets/app_scaffold.dart';
import 'package:notify_hub/features/notification/data/notification_api_services.dart';
import 'package:notify_hub/features/notification/data/notification_repository.dart';
import 'package:notify_hub/features/notification/view/widgets/notification_tile.dart';
import 'package:notify_hub/features/notification/view_model/bloc/notification_bloc.dart';

/// Screen displaying the list of notifications with state handling.
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final apiServices = NotificationApiServices();
    final repository = NotificationRepository(apiServices: apiServices);

    return BlocProvider<NotificationBloc>(
      create: (context) =>
          NotificationBloc(repository: repository)..add(FetchNotifications()),
      child: AppScaffold(
        appBar: const AppAppBar(title: 'Notifications'),
        body: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            if (state.status == NotificationStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.status == NotificationStatus.failure) {
              return Center(
                child: Text(
                  state.errorMassage ?? 'Failed to load notifications',
                ),
              );
            }

            if (state.notifications.isEmpty) {
              return const Center(child: Text('No notifications found'));
            }

            return ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: state.notifications.length,
              itemBuilder: (context, index) {
                final item = state.notifications[index];
                return NotificationTile(notification: item);
              },
            );
          },
        ),
      ),
    );
  }
}
