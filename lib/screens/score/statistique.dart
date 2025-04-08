import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Statistique extends StatelessWidget {
  const Statistique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListWheelScrollView(
        itemExtent: 250,
        physics: const BouncingScrollPhysics(),
        //useMagnifier: true,
        //magnification: 1.2,
        //physics: const FixedExtentScrollPhysics(),
        children: [
          Container(
            child: Text(
              "Quiz App",
              style: GoogleFonts.comicNeue(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.to(
              Gamepage1(),
              transition: Transition.downToUp,
              duration: Duration(milliseconds: 500),
            ),
            child: const Hero(
              tag: 'hero1',
              child: NewWidget(title: 'niveau 1', value: '0 sur 5'),
            ),
          ),
          InkWell(
            onTap: () => Get.to(
              Gamepage2(),
              transition: Transition.downToUp,
              duration: Duration(milliseconds: 500),
            ),
            child: const Hero(
              tag: 'hero2',
              child: NewWidget(title: 'niveau 2', value: '0 sur 5'),
            ),
          ),
          InkWell(
            onTap: () => Get.to(
              Gamepage3(),
              transition: Transition.downToUp,
              duration: Duration(milliseconds: 500),
            ),
            child: const Hero(
              tag: 'hero3',
              child: NewWidget(title: 'niveau 3', value: '0 sur 5'),
            ),
          ),
          InkWell(
            onTap: () => Get.to(
              Gamepage4(),
              transition: Transition.downToUp,
              duration: Duration(milliseconds: 500),
            ),
            child: const Hero(
              tag: 'hero4',
              child: NewWidget(title: 'niveau 4', value: '0 sur 5'),
            ),
          ),
          InkWell(
            onTap: () => Get.to(
              Gamepage5(),
              transition: Transition.downToUp,
              duration: Duration(milliseconds: 500),
            ),
            child: const Hero(
              tag: 'hero5',
              child: NewWidget(title: 'niveau 5', value: '0 sur 5'),
            ),
          ),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String title;
  final String value;

  const NewWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return niveau(title: title, value: value);
  }
}

class niveau extends StatelessWidget {
  const niveau({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 500,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 190, 4, 231),
              const Color.fromARGB(255, 82, 2, 90)
            ],
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 16, 16, 16),
              blurRadius: 10,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Focus(
                canRequestFocus: false,
                child: Text(title,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              const SizedBox(height: 10),
              Text(value,
                  style: const TextStyle(fontSize: 18, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}

class Gamepage1 extends StatelessWidget {
  const Gamepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Hero(
          tag: 'hero1',
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 193, 4, 231),
                      const Color.fromARGB(255, 82, 2, 90),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class Gamepage2 extends StatelessWidget {
  const Gamepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Hero(
          tag: 'hero2',
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 19, 46, 223),
                      const Color.fromARGB(255, 3, 128, 238),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class Gamepage3 extends StatelessWidget {
  const Gamepage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Hero(
          tag: 'hero3',
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 245, 112, 112),
                      const Color.fromARGB(255, 228, 5, 5),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class Gamepage4 extends StatelessWidget {
  const Gamepage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Hero(
          tag: 'hero4',
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 67, 243, 3),
                      const Color.fromARGB(255, 7, 230, 145),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class Gamepage5 extends StatelessWidget {
  const Gamepage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Hero(
          tag: 'hero5',
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 51, 230, 250),
                      const Color.fromARGB(255, 98, 140, 248),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
