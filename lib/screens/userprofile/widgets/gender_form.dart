import 'package:flutter/material.dart';

import '../../../config/constant/assets_constants.dart';
import '../../widgets/button_disabled.dart';
import '../../widgets/next_button.dart';

class GenderForm extends StatefulWidget {
  final VoidCallback onSubmitted;
  final TextEditingController genderController;
  const GenderForm({
    Key? key,
    required this.onSubmitted,
    required this.genderController,
  }) : super(key: key);

  @override
  State<GenderForm> createState() => _GenderFormState();
}

class _GenderFormState extends State<GenderForm> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  bool isSexSelected = false;

  @override
  void initState() {
    if (widget.genderController.text == "FEMALE") {
      setState(() {
        isFemaleSelected = true;
      });
    } else if (widget.genderController.text == "MALE") {
      setState(() {
        isMaleSelected = true;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 15,
        ),
        Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        widget.genderController.text = "FEMALE";
                        isMaleSelected = false;
                        isFemaleSelected = true;
                        isSexSelected = true;
                      }),
                      child: Image.asset(
                        femaleLiftingIcon,
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: isFemaleSelected
                            ? null
                            : Colors.white.withOpacity(0.5),
                        colorBlendMode: BlendMode.modulate,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        widget.genderController.text = "MALE";
                        isFemaleSelected = false;
                        isMaleSelected = true;
                        isSexSelected = true;
                      }),
                      child: Image.asset(
                        maleLiftingIcon,
                        color: isMaleSelected
                            ? null
                            : Colors.white.withOpacity(0.5),
                        colorBlendMode: BlendMode.modulate,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        isSexSelected
            ? NextButton(
                isExtendedButton: false,
                onPressed: () {
                  widget.onSubmitted();
                  setState(() {
                    isSexSelected = false;
                  });
                },
                btnName: "Next",
              )
            : const DisabledButton(btnName: "Select a Gender"),
      ],
    );
  }
}
