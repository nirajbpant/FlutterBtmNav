import 'package:flutter/material.dart';

import 'imagecarousel/image_carousel.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: ImageCarousel(),
    );
  }
}
