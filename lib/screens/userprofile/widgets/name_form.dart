import 'package:flutter/material.dart';

import '../../widgets/next_button.dart';
import '../../widgets/string_field.dart';
import '../user_profile_constants.dart';

class NameForm extends StatefulWidget {
  final VoidCallback onSubmitted;
  const NameForm({
    Key? key,
    required this.onSubmitted,
    required this.firstNameController,
    required this.lastNameController,
  }) : super(key: key);

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  @override
  State<NameForm> createState() => _NameFormState();
}

class _NameFormState extends State<NameForm> {
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
                  "What is your name?",
                  style: descriptionStyle,
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: FirstNameField(
                      controller: widget.firstNameController,
                      hintText: "First Name"),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: LastNameNameField(
                      controller: widget.lastNameController,
                      hintText: "Last Name"),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
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
      ),
    );
  }
}
