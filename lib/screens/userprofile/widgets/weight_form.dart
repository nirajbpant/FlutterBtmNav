import 'package:flutter/material.dart';

import '../../../config/constant/app_constants.dart';
import '../../../config/constant/assets_constants.dart';
import '../../widgets/next_button.dart';
import '../../widgets/string_field.dart';
import '../user_profile_constants.dart';

class WeightForm extends StatelessWidget {
  final TextEditingController weightController;
  final VoidCallback onSubmitted;
  const WeightForm({
    Key? key,
    required this.weightController,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(weightIcon, height: 250),
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
                        width: 120,
                        child: WeightField(
                          controller: weightController,
                          hintText: "Weight",
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Kg",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: fontNameLato,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ],
              ),
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
