import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../application/get_gym_details/get_gym_details_bloc.dart';
import '../../config/app_navigation.dart';
import '../../injectable/injection.dart';
import '../widgets/next_button.dart';
import '../widgets/string_field.dart';
import '../widgets/toast_message.dart';
import 'join_a_gym_constants.dart';
import 'qr_key.dart';

class JoinAGym extends StatefulWidget {
  const JoinAGym({Key? key}) : super(key: key);

  @override
  State<JoinAGym> createState() => _JoinAGymState();
}

class _JoinAGymState extends State<JoinAGym> {
  TextEditingController qrCode = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  QRViewController? controller;
  Barcode? barcode;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetGymDetailsBloc>(),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        extendBodyBehindAppBar: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Join a Gym",
                  style: joinAGymStyle,
                ),
                const SizedBox(
                  height: 4,
                ),
                Expanded(flex: 3, child: buildQrView(context)),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const Text(
                        "Enter Gym's Code",
                        style: joinAGymStyle,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        child: GymCodeField(
                            controller: qrCode, hintText: "Ex. QUN234FG"),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Please ask the gym for the Qunto Profile ID\nor scan their barcode to continue.",
                        style: gymAddresStyle,
                      ),
                      BlocConsumer<GetGymDetailsBloc, GetGymDetailsState>(
                        listener: (context, state) {
                          state.maybeWhen(
                              success: (gymDetwails) =>
                                  jumpToGymConfirmationScreen(
                                      context: context,
                                      gymDetails: gymDetwails),
                              failure: (errorMsg) => showToastMessages(
                                  message: errorMsg, color: Colors.red),
                              orElse: () {});
                        },
                        builder: (context, state) {
                          return state.maybeWhen(
                              orElse: () => NextButton(
                                    onPressed: () {
                                      final bloc =
                                          context.read<GetGymDetailsBloc>();
                                      if (_formKey.currentState!.validate()) {
                                        bloc.add(
                                            GetGymDetailsEvent.getGymDetails(
                                                gymId: qrCode.text));
                                      }
                                    },
                                    btnName: "Next",
                                    isExtendedButton: false,
                                  ),
                              loading: () => const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 30),
                                    child: CircularProgressIndicator(),
                                  ));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        overlayColor: Colors.white,
        borderWidth: 10,
        borderLength: 20,
        borderColor: Colors.black,
        borderRadius: 10,
        cutOutSize: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
      controller.scannedDataStream.listen((barcode) {
        setState(() {
          this.barcode = barcode;
          if (this.barcode != null) {
            qrCode.text = barcode.code.toString();
          }
        });
      });
    });
  }
}
