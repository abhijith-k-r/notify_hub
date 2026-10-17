import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home/view/widgets/home_bottom_nav.dart';
import '../../features/home/view_model/bottom_nav_cubit.dart';
import 'app_app_bar.dart';
import 'app_empty_view.dart';
import 'app_scaffold.dart';

/// Orders screen corresponding to the My Order tab in bottom navigation.
class MyOrderView extends StatelessWidget {
  const MyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BottomNavCubit>().changeTab(2);
    });

    return const AppScaffold(
      appBar: AppAppBar(title: 'My Orders', showBackButton: false),
      bottomNavigationBar: HomeBottomNav(),
      body: AppEmptyView(
        title: 'No Orders Yet',
        subtitle: 'You have not placed any orders recently.',
        icon: Icons.receipt_long_outlined,
      ),
    );
  }
}
