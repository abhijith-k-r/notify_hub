import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notify_hub/features/notification/data/notification_repository.dart';
import 'package:notify_hub/features/notification/model/notification_model.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository _repository;
  NotificationBloc({required this._repository})
    : super(const NotificationState()) {
    on<NotificationEvent>(_fetchNotifications);
  }

  Future<void> _fetchNotifications(
    NotificationEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(status: NotificationStatus.loading, clearError: true));

    try {
      final result = await _repository.fetchNotifications();
      // print('API returned ${result.data.length} notifications');
      emit(
        state.copyWith(
          status: NotificationStatus.sucess,
          notifications: result.data,
          clearError: true,
        ),
      );
    } catch (e) {
      // print('Notification API error: $e');
      // print(stackTrace);

      emit(
        state.copyWith(
          status: NotificationStatus.failure,
          errorMassage: e.toString(),
        ),
      );
    }
  }
}
