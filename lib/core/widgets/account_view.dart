import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home/view/widgets/home_bottom_nav.dart';
import '../../features/home/view_model/bottom_nav_cubit.dart';
import 'app_app_bar.dart';
import 'app_empty_view.dart';
import 'app_scaffold.dart';

/// Account screen corresponding to the Account tab in bottom navigation.
class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BottomNavCubit>().changeTab(3);
    });

    return const AppScaffold(
      appBar: AppAppBar(title: 'Account', showBackButton: false),
      bottomNavigationBar: HomeBottomNav(),
      body: AppEmptyView(
        title: 'Account & Settings',
        subtitle: 'Manage your profile, saved addresses, and preferences.',
        icon: Icons.person_outline_rounded,
      ),
    );
  }
}