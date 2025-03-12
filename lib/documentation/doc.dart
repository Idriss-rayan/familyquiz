import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Doc extends StatelessWidget {
  Doc({super.key});

  final List<Widget> pages = [
    PageWidget(
      bgColor: const Color.fromARGB(255, 242, 175, 4),
      imagePath: "assets/icons/test1.png",
    ),
    PageWidget(
      bgColor: const Color.fromARGB(255, 4, 241, 119),
      imagePath: "assets/icons/test2.png",
    ),
    PageWidget(
      gradientColors: [Colors.red, Colors.deepOrangeAccent],
      imagePath: "assets/icons/test3.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        fullTransitionValue: 300,
        enableLoop: false,
        enableSideReveal: true,
        slideIconWidget: const Icon(
          Icons.arrow_back_ios,
          size: 24, // Increased for better visibility
          color: Colors.white,
        ),
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.5,
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  final Color? bgColor;
  final List<Color>? gradientColors;
  final String imagePath;

  const PageWidget({
    super.key,
    this.bgColor,
    this.gradientColors,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        gradient: gradientColors != null
            ? LinearGradient(
                colors: gradientColors!,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Image.asset(
              imagePath,
              height: 300,
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
