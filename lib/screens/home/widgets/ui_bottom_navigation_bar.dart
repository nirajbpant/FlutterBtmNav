import 'package:fitness_user/config/constant/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/bottom_navigation/bottom_navigation_bloc.dart';
import '../../../injectable/injection.dart';
import '../bottom_navigation_key.dart';

class UIBottomNavigationBar extends StatelessWidget {
  const UIBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BottomNavigationBloc>(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.13,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
          builder: (context, state) {
            final bloc = context.read<BottomNavigationBloc>();
            return BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                currentIndex: bloc.currentIndex,
                key: uikeyUIBottomNavigationBar,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 32,
                      width: 40,
                      child: SvgPicture.asset(navigationHomeIcon),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 32,
                      width: 40,
                      child: SvgPicture.asset(navigationGymIcon),
                    ),
                    label: 'Gym',
                  ),
                  const BottomNavigationBarItem(
                    icon: SizedBox(),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 32,
                      width: 40,
                      child: SvgPicture.asset(navigationBodyIcon),
                    ),
                    label: 'Body',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 32,
                      width: 40,
                      child: SvgPicture.asset(navigationDietIcon),
                    ),
                    label: 'Diet',
                  ),
                ],
                onTap: (index) {
                  if (index != 2) {
                    bloc.add(
                      BottomNavigationEvent.pageTapped(index),
                    );
                  }
                });
          },
        ),
      ),
    );
  }
}
