import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../view_model/bottom_nav_cubit.dart';
import '../widgets/category_grid.dart';
import '../widgets/craze_deals_banner.dart';
import '../widgets/home_bottom_nav.dart';
import '../widgets/home_header.dart';
import '../widgets/home_search_bar.dart';
import '../widgets/nearby_stores_section.dart';
import '../widgets/promo_banner.dart';
import '../widgets/refer_earn_banner.dart';
import '../widgets/trending_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BottomNavCubit>().changeTab(0);
    });

    return const AppScaffold(
      bottomNavigationBar: HomeBottomNav(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            AppSpacing.gapH8,
            HomeSearchBar(),
            AppSpacing.gapH20,
            CategoryGrid(),
            AppSpacing.gapH24,
            PromoBanner(),
            AppSpacing.gapH24,
            TrendingSection(),
            AppSpacing.gapH24,
            CrazeDealsBanner(),
            AppSpacing.gapH20,
            ReferEarnBanner(),
            AppSpacing.gapH24,
            NearbyStoresSection(),
            AppSpacing.gapH32,
          ],
        ),
      ),
    );
  }
}
