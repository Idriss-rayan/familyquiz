import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:familyquiz/documentation/histoire.dart'; // Assurez-vous que cette classe est correctement importée.

class Doc extends StatelessWidget {
  Doc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        fullTransitionValue: 300,
        enableLoop: false,
        enableSideReveal: false,
        slideIconWidget: Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.5,
      ),
    );
  }

  final pages = [
    // Première page avec un fond jaune
    Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 242, 175, 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Image.asset(
              "assets/icons/test1.png",
              height: 300,
              width: 300,
            ),
          ),
        ],
      ),
    ),
    // Deuxième page avec un fond vert
    Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 4, 241, 119),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Image.asset(
              "assets/icons/test2.png",
              height: 300,
              width: 300,
            ),
          ),
        ],
      ),
    ),
    // Dernière page avec un fond dégradé et texte
    Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.grey],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/Ahijo.png",
                width: 500,
                height: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  Name.Ahmadou,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors
                        .black, // Le texte en blanc pour le faire ressortir
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify, // Justifie le texte
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    // pour paul biya
    Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Bordure arrondie
                  image: DecorationImage(
                    image: AssetImage("assets/icons/biya.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 220,
                width: 300,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  Name.Biya,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors
                        .black, // Le texte en blanc pour le faire ressortir
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify, // Justifie le texte
                ),
              ),
            ],
          ),
        ),
      ),
    ),

    // pour ernest

    Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 210, 147, 1),
            const Color.fromARGB(255, 104, 82, 1)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Bordure arrondie
                  image: DecorationImage(
                    image: AssetImage("assets/icons/ernest.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 220,
                width: 300,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  Name.ernest,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors
                        .black, // Le texte en blanc pour le faire ressortir
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify, // Justifie le texte
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}
