import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home/view/widgets/home_bottom_nav.dart';
import '../../features/home/view_model/bottom_nav_cubit.dart';
import 'app_app_bar.dart';
import 'app_empty_view.dart';
import 'app_scaffold.dart';

/// Cart screen corresponding to the Cart tab in bottom navigation.
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BottomNavCubit>().changeTab(1);
    });

    return const AppScaffold(
      appBar: AppAppBar(title: 'Cart', showBackButton: false),
      bottomNavigationBar: HomeBottomNav(),
      body: AppEmptyView(
        title: 'Your Cart is Empty',
        subtitle: 'Explore stores and add delicious items to your cart!',
        icon: Icons.shopping_cart_outlined,
      ),
    );
  }
}
