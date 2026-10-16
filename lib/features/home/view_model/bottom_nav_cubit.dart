import 'package:flutter_bloc/flutter_bloc.dart';

/// Cubit managing the selected index of the bottom navigation bar.
class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  void changeTab(int index) {
    if (state != index) {
      emit(index);
    }
  }
}
