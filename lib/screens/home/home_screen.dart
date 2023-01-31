import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../application/bottom_navigation/bottom_navigation_bloc.dart';
import '../../config/app_navigation.dart';
import '../../config/constant/assets_constants.dart';
import '../../injectable/injection.dart';
import '../widgets/under_construction_screen.dart';
import 'widgets/ui_bottom_navigation_bar.dart';
import 'widgets/user_stats_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  void _onLogout(BuildContext context) {
    jumpToSplashScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BottomNavigationBloc>(),
      child: Scaffold(
        body: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const SizedBox();
              },
              currentIndexChanged: (_) {
                return const SizedBox();
              },
              homePageLoaded: () {
                return const UserStatsScreen();
              },
              gymPageLoaded: () {
                return const UnderConstructionScreen(
                  name: "Gym",
                );
              },
              gymModePageLoaded: () {
                return const SizedBox();
              },
              bodyPageLoaded: () {
                return const UnderConstructionScreen(
                  name: "Body",
                );
              },
              dietPageLoaded: () {
                return const UnderConstructionScreen(
                  name: "Diet",
                );
              },
            );
          },
        ),
        bottomNavigationBar: const UIBottomNavigationBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: SizedBox(
            height: 70,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () => jumpToGymModeScreen(context: context),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(gymModeIcon),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
