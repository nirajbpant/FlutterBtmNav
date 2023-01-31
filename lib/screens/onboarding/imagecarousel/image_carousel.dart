import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../onboarding_constants.dart';
import 'bottom_navigation_buttons.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int photoIndex = 0;

  Widget _dynamicTextDes(index) {
    if (index == 0) {
      return const Text(
        pageDescription,
        style: onboardingDesStyle,
      );
    } else if (index == 1) {
      return const Text(
        pageDescription,
        style: onboardingDesStyle,
      );
    } else {
      return const Text(
        pageDescription,
        style: onboardingDesStyle,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        //container for the whole screen
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              const Color(0xff00fad4).withOpacity(0),
              const Color(0xff1183fa).withOpacity(1),
              const Color(0xff115EAD).withOpacity(1),
            ],
          ),
        ),
        child: Column(
          //column for the whole screen
          children: [
            Expanded(
              //for Image, prowdly logo and carousel indicator plus text
              flex: 7,
              child: PageView.builder(
                onPageChanged: (index) => setState(() {
                  photoIndex = index;
                }),
                itemCount: photos.length,
                itemBuilder: (ctx, photoIndex) => SizedBox(
                  child: Column(
                    //column for image, discover text
                    children: [
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 15),
                          Container(
                            height: screenHeight * 0.20,
                            width: 120,
                            child: const Center(
                              child: Text(
                                "Stay Fit \nForever",
                                style: onboardingHeadStyle,
                              ),
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 50,
                      ),
                      //text
                      SizedBox(
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.8,
                        child: _dynamicTextDes(photoIndex),
                      ),
                      SizedBox(
                        width: screenWidth,
                        height: screenHeight * 0.35,
                        child: Lottie.asset(
                          photos[photoIndex],
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    _SelectedPhoto(
                      numberOfPhotos: photos.length,
                      photoIndex: photoIndex,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    BottomNav(
                      screenWidth: screenWidth,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SelectedPhoto extends StatelessWidget {
  final int numberOfPhotos;
  final int photoIndex;

  const _SelectedPhoto({
    Key? key,
    required this.numberOfPhotos,
    required this.photoIndex,
  }) : super(key: key);

  Widget _inactivePhoto() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 5.0,
          width: 30.0,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }

  Widget _activePhoto() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
          height: 5.0,
          width: 30.0,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    final List<Widget> dots = [];
    for (int i = 0; i < numberOfPhotos; i++) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
