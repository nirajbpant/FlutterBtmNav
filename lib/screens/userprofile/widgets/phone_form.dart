import 'package:fitness_user/screens/userprofile/user_profile_constants.dart';
import 'package:fitness_user/screens/widgets/next_button.dart';
import 'package:fitness_user/screens/widgets/string_field.dart';
import 'package:flutter/material.dart';

class PhoneForm extends StatefulWidget {
  final TextEditingController phoneNumberController;
  final VoidCallback onSubmitted;
  const PhoneForm(
      {Key? key,
      required this.phoneNumberController,
      required this.onSubmitted})
      : super(key: key);

  @override
  State<PhoneForm> createState() => _PhoneFormState();
}

class _PhoneFormState extends State<PhoneForm> {
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
                const Text(
                  "Where do we send reminders?",
                  style: descriptionStyle,
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: PhoneField(
                      controller: widget.phoneNumberController,
                      hintText: "Phone Number"),
                ),
                const SizedBox(
                  height: 40,
                ),
                NextButton(
                  isExtendedButton: false,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      widget.onSubmitted();
                    }
                  },
                  btnName: "Next",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
