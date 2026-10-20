part of 'notification_bloc.dart';

enum NotificationStatus { initial, loading, sucess, failure }

class NotificationState extends Equatable {
  final NotificationStatus status;
  final List<Datum> notifications;
  final String? errorMassage;
  const NotificationState({
    this.status = NotificationStatus.initial,
    this.notifications = const [],
    this.errorMassage,
  });

  NotificationState copyWith({
    NotificationStatus? status,
    List<Datum>? notifications,
    String? errorMassage,
  }) {
    return NotificationState(
      status: status ?? this.status,
      notifications: notifications ?? this.notifications,
      errorMassage: errorMassage ?? this.errorMassage,
    );
  }

  @override
  List<Object?> get props => [status, notifications, errorMassage];
}
