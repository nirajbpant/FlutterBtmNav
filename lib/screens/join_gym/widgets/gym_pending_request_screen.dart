import 'package:flutter/material.dart';

import '../../../config/constant/assets_constants.dart';
import '../../home/widgets/qunto_flat_button.dart';
import '../join_a_gym_constants.dart';

class GymPendingRequestScreen extends StatelessWidget {
  const GymPendingRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.77,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Pending Request",
            style: joinAGymStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            setGoalsIcon,
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "GYMID : QUN239SK",
            style: gymQRCodeDisplayStyle,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Fitness Today Gym",
            style: joinAGymStyle,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "C-42, Main Mall Road, Kolkota West Bengal",
            style: gymAddresStyle,
          ),
          const Text(
            "220201",
            style: gymAddresStyle,
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Status:",
                style: statusStyle,
              ),
              Text(
                "Pending",
                style: pendingStyle,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          QuntoFlatButton(
            onPressed: () => Navigator.of(context).pop(),
            btnName: "Cancel Request",
            icon: const Padding(
              padding: EdgeInsets.only(top: 4, left: 10),
              child: SizedBox(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
