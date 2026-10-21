import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

// / Cubit managing Home screen state including unread badge counts.
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  // void setUnreadCount(int count) {
  //   emit(state.copyWith(unreadNotificationsCount: count));
  // }

  // void updateLocation(String location) {
  //   emit(state.copyWith(userLocation: location));
  // }
}
