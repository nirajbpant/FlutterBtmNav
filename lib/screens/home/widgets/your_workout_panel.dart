import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../application/join_gym/join_gym_cubit.dart';
import '../../../config/app_navigation.dart';
import '../../../config/constant/app_constants.dart';
import '../../../config/constant/assets_constants.dart';
import '../home_screen_constants.dart';
import 'qunto_flat_button.dart';

class YourWorkOutPanel extends StatefulWidget {
  const YourWorkOutPanel({
    Key? key,
  }) : super(key: key);

  @override
  State<YourWorkOutPanel> createState() => _YourWorkOutPanelState();
}

class _YourWorkOutPanelState extends State<YourWorkOutPanel> {
  @override
  void initState() {
    final cubit = context.read<JoinGymCubit>();
    cubit.getGymJoinInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Align(
          child: Text(
            'Your Workout',
            style: statHeaderStyle,
          ),
          alignment: Alignment(-0.7, 0),
        ),
        const SizedBox(
          height: 4,
        ),
        Card(
          elevation: 0,
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0, 0.9),
                colors: [
                  Color(0xff39ff14),
                  Colors.greenAccent,
                  Colors.greenAccent,
                ],
                // tileMode: TileMode.clamp,
              ),
            ),
            height: 190,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
              ),
              child: BlocBuilder<JoinGymCubit, JoinGymState>(
                builder: (context, state) {
                  return state.when(initial: () {
                    return const SizedBox();
                  }, gymRequested: () {
                    return _buildGymNotJoinedAndPendingCard(
                      message: "You have already a pending request to a gym.",
                      btnName: "View Request",
                      onPressed: () => popUpGymPendingRequest(context: context),
                    );
                  }, gymNotJoined: () {
                    return _buildGymNotJoinedAndPendingCard(
                      message:
                          "You have not joined a gym yet. Please join one now",
                      btnName: "Join A Gym",
                      onPressed: () => jumpToJoinAGymScreen(context: context),
                    );
                  }, gymJoined: () {
                    return _buildGymJoinedCard();
                  });
                },
              ),
            ),
          ),
        )
      ],
    );
  }

  Column _buildGymNotJoinedAndPendingCard(
      {required final String message,
      required final String btnName,
      required final VoidCallback onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.warning_amber),
              Text(message,
                  style:
                      const TextStyle(fontFamily: fontNameLato, fontSize: 12)),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        QuntoFlatButton(
          btnName: btnName,
          onPressed: onPressed,
          icon: const SizedBox(),
        ),
      ],
    );
  }

  Column _buildGymJoinedCard() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Gym:",
                style: optionStyle,
              ),
              Text("Anytime Fitness Gym"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "This month:",
                style: optionStyle,
              ),
              Text("12 days"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Calories to be burned:",
                style: optionStyle,
              ),
              Text("750/750"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Today's Mission:",
                style: optionStyle,
              ),
              Text("Arms"),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        QuntoFlatButton(
          onPressed: () {},
          btnName: "Join A Gym",
          icon: Padding(
            padding: const EdgeInsets.only(top: 4, left: 10),
            child: SvgPicture.asset(
              rightArrowIcon,
              color: Colors.white,
              height: 25,
            ),
          ),
        ),
      ],
    );
  }
}
