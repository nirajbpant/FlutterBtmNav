import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: const <Widget>[
      Expanded(
        child: Divider(
          color: Colors.black54,
        ),
      ),
      Text("OR"),
      Expanded(
          child: Divider(
        color: Colors.black54,
      )),
    ]);
  }
}
