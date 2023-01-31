import 'package:fitness_user/core/logger/log.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../config/constant/assets_constants.dart';
import '../../widgets/button_disabled.dart';
import '../../widgets/next_button.dart';
import '../user_profile_constants.dart';

class DateForm extends StatefulWidget {
  final TextEditingController dateController;
  final VoidCallback onSubmitted;
  const DateForm({
    Key? key,
    required this.dateController,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  State<DateForm> createState() => _DateFormState();
}

class _DateFormState extends State<DateForm> {
  bool isDateSelected = false;

  late DateTime? _dateTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Image.asset(ageIcon, height: 250),
            const Text(
              "How old are you?",
              style: descriptionStyle,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: widget.dateController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  labelText: "Enter Date",
                ),
                readOnly: true,
                onTap: () async {
                  _dateTime = await showDatePicker(
                    context: context,
                    initialDate: DateTime(DateTime.now().year - 18),
                    firstDate: DateTime(DateTime.now().year - 100),
                    lastDate: DateTime(DateTime.now().year - 18),
                  );
                  if (_dateTime != null) {
                    setState(() {
                      isDateSelected = true;
                    });
                    Log.d("Date $_dateTime");
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(_dateTime!);
                    widget.dateController.text = formattedDate;
                  }
                },
              ),
            ),
          ],
        ),
        (isDateSelected)
            ? NextButton(
                isExtendedButton: false,
                onPressed: () {
                  widget.onSubmitted();
                  setState(() {
                    isDateSelected = false;
                  });
                },
                btnName: "Next",
              )
            : const DisabledButton(btnName: "Select Birthday"),
      ],
    );
  }
}
