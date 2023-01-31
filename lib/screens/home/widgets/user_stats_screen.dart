import 'package:fitness_user/application/join_gym/join_gym_cubit.dart';
import 'package:fitness_user/application/logout/log_out_cubit.dart';
import 'package:fitness_user/config/app_navigation.dart';
import 'package:fitness_user/injectable/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_screen_constants.dart';
import 'daily_goals.dart';
import 'your_diet.dart';
import 'your_workout_panel.dart';

class UserStatsScreen extends StatelessWidget {
  const UserStatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            BlocProvider(
              create: (context) => getIt<LogOutCubit>(),
              child: const _LogoutBtn(),
            ),
            const Align(
              child: Text(
                "Welcome, User!",
                style: welcomeUserStyle,
              ),
              alignment: Alignment(-0.7, 0),
            ),
            const SizedBox(
              height: 12,
            ),
            const Expanded(
              flex: 3,
              child: DailyGoals(),
            ),
            Expanded(
              flex: 5,
              child: BlocProvider(
                create: (context) => getIt<JoinGymCubit>(),
                child: const YourWorkOutPanel(),
              ),
            ),
            const Expanded(
              flex: 3,
              child: YourDiet(),
            ),
          ],
        ),
      ),
    );
  }
}

class _LogoutBtn extends StatelessWidget {
  const _LogoutBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogOutCubit, LogOutState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            _onLogout(context);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            final cubit = context.read<LogOutCubit>();
            cubit.logout();
          },
          child: SizedBox(
            height: 20,
            width: double.infinity,
            child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.logout),
                      Text("Logout"),
                    ],
                  ),
                )),
          ),
        );
      },
    );
  }

  void _onLogout(BuildContext context) {
    jumpToSplashScreen(context);
  }
}
