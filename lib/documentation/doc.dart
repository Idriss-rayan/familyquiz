import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:familyquiz/documentation/histoire.dart';

class Doc extends StatelessWidget {
  Doc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: _buildPages(),
        fullTransitionValue: 300,
        enableLoop: false,
        enableSideReveal: false,
        slideIconWidget: Icon(Icons.arrow_back_ios, size: 20),
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.5,
      ),
    );
  }

  List<Widget> _buildPages() => [
        _buildImagePage("assets/icons/test1.png", Color(0xFFF2AF04)),
        _buildImagePage("assets/icons/test2.png", Color(0xFF04F177)),
        _buildTextPage("assets/icons/Ahijo.png", Name.Ahmadou,
            [Colors.white, Colors.grey]),
        _buildTextPage(
            "assets/icons/biya.png", Name.Biya, [Colors.white, Colors.blue]),
        _buildTextPage("assets/icons/ernest.png", Name.ernest,
            [Color(0xFFD29301), Color(0xFF685201)]),
        _buildTextPage("assets/icons/milla.png", Name.milla, [
          Color.fromARGB(255, 210, 248, 219),
          Color.fromARGB(255, 36, 183, 3),
          Colors.green
        ]),
        _buildTextPage("assets/icons/foka.png", Name.milla, [
          Color.fromARGB(255, 243, 39, 103),
          Color.fromARGB(255, 255, 0, 0),
        ]),
      ];

  Widget _buildImagePage(String assetPath, Color bgColor) {
    return Container(
      width: double.infinity,
      color: bgColor,
      child: Center(
        child: Image.asset(assetPath, height: 300, width: 300),
      ),
    );
  }

  Widget _buildTextPage(
      String imagePath, String text, List<Color> gradientColors) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImageContainer(imagePath),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                text,
                style:
                    TextStyle(fontSize: 18, color: Colors.black, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      height: 220,
      width: 300,
    );
  }
}
