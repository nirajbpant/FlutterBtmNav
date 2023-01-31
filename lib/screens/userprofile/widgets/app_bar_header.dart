import 'package:flutter/material.dart';

import '../../../config/constant/app_constants.dart';

class AppBarHeader extends AppBar {
  AppBarHeader({
    Key? key,
    required String title,
  }) : super(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 32,
          key: key,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: fontNameLato,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        );
}
