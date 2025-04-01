import 'package:familyquiz/documentation/doc.dart';
import 'package:familyquiz/welcome/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 159, 33, 243),
        elevation: 40,
        backgroundColor: const Color.fromARGB(255, 47, 2, 84),
        title: Center(
            child: Text(
          "Preference",
          style: GoogleFonts.comicNeue(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 223, 132, 250),
              const Color.fromARGB(255, 74, 3, 95)
            ],
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            // buttons ...
            Spacer(),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Get.to(Doc());
                },
                child: Buttons(name: "Carrière"),
              ),
            ),
            SizedBox(height: 20),
            Buttons(name: "Compétition"),
            SizedBox(height: 20),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  Get.to(Doc());
                },
                child: Buttons(name: "Documentation"),
              ),
            ),
            SizedBox(height: 20),
            Buttons(name: "Survie"),
            SizedBox(height: 20),
            Buttons(name: "Contre-la-Montre"),
          ],
        ),
      ),
    );
  }
}
