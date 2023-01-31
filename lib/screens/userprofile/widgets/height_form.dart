import 'package:flutter/material.dart';

import '../../../config/constant/app_constants.dart';
import '../../../config/constant/assets_constants.dart';
import '../../widgets/next_button.dart';
import '../../widgets/string_field.dart';
import '../user_profile_constants.dart';

class HeightForm extends StatelessWidget {
  final TextEditingController heightFeetController;
  final TextEditingController heightInchController;
  final VoidCallback onSubmitted;
  const HeightForm({
    Key? key,
    required this.heightFeetController,
    required this.heightInchController,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Image.asset(heightIcon, height: 250),
                const Text(
                  "How much do you weigh?",
                  style: descriptionStyle,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      child: HeightField(
                        controller: heightFeetController,
                        hintText: "Ft",
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text(
                      "\"",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: fontNameLato,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: HeightField(
                        controller: heightInchController,
                        hintText: "In",
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text(
                      "'",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: fontNameLato,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            NextButton(
              isExtendedButton: false,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  onSubmitted();
                }
              },
              btnName: "Next",
            ),
          ],
        ),
      ),
    );
  }
}
