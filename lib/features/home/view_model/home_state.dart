import 'package:equatable/equatable.dart';

/// State for HomeScreen containing unread count and UI parameters.
class HomeState extends Equatable {
  final int unreadNotificationsCount;
  final String userLocation;

  const HomeState({
    this.unreadNotificationsCount = 2,
    this.userLocation = 'ABCD, New Delhi',
  });

  HomeState copyWith({
    int? unreadNotificationsCount,
    String? userLocation,
  }) {
    return HomeState(
      unreadNotificationsCount:
          unreadNotificationsCount ?? this.unreadNotificationsCount,
      userLocation: userLocation ?? this.userLocation,
    );
  }

  @override
  List<Object?> get props => [unreadNotificationsCount, userLocation];
}
