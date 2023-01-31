import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/request_gym_admission/request_gym_admission_bloc.dart';
import '../../../config/constant/assets_constants.dart';
import '../../../data/get_gym_details/datastore/models/gym_details.dart';
import '../../../injectable/injection.dart';
import '../../widgets/next_button.dart';
import '../../widgets/toast_message.dart';
import '../join_a_gym_constants.dart';

class GymConfirmationPage extends StatelessWidget {
  final GymDetails gymDetails;
  const GymConfirmationPage({Key? key, required this.gymDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RequestGymAdmissionBloc>(),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        extendBodyBehindAppBar: false,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const Expanded(
                flex: 1,
                child: Text(
                  "Join a Gym",
                  style: joinAGymStyle,
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Image.asset(
                        setGoalsIcon,
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: double.infinity,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        gymDetails.gymName,
                        style: joinAGymStyle,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "GYMID : ${gymDetails.quntoGymId}",
                        style: gymQRCodeDisplayStyle,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        gymDetails.city + ", " + gymDetails.country,
                        style: gymAddresStyle,
                      ),
                      Text(
                        gymDetails.pinCode,
                        style: gymAddresStyle,
                      ),
                      BlocConsumer<RequestGymAdmissionBloc,
                          RequestGymAdmissionState>(
                        listener: (context, state) {
                          state.maybeWhen(
                              success: (admissionInfo) {
                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                              },
                              failure: (errorMsg) => showToastMessages(
                                  message: errorMsg, color: Colors.red),
                              orElse: () {});
                        },
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () => NextButton(
                              onPressed: () {
                                final bloc =
                                    context.read<RequestGymAdmissionBloc>();
                                bloc.add(RequestGymAdmissionEvent
                                    .requestGymAdmission(
                                        gymId: gymDetails.quntoGymId));
                              },
                              btnName: "Join Gym",
                              isExtendedButton: true,
                            ),
                            loading: () => const Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: CircularProgressIndicator(),
                            ),
                          );
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
