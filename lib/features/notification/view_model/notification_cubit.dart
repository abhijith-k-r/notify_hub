import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/notification_mock_data.dart';
import '../model/notification_model.dart';
import 'notification_state.dart';

/// Cubit managing notification data fetching, refresh, and state transitions.
class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(const NotificationInitial());

  /// Load initial notifications
  Future<void> loadNotifications({bool showLoading = true}) async {
    if (showLoading) {
      emit(const NotificationLoading());
    }

    try {
      // Realistic brief delay for smooth UI transition demonstration
      await Future<void>.delayed(const Duration(milliseconds: 600));

      final List<NotificationModel> list =
          NotificationMockData.sampleNotifications;
      emit(NotificationLoaded(list));
    } catch (e) {
      emit(NotificationError('Failed to load notifications: ${e.toString()}'));
    }
  }

  /// Pull-to-refresh notifications
  Future<void> refreshNotifications() async {
    await loadNotifications(showLoading: false);
  }

  /// Simulate error state for UI validation
  void triggerError(String errorMessage) {
    emit(NotificationError(errorMessage));
  }
}
