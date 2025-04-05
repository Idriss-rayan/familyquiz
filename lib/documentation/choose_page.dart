import 'package:familyquiz/documentation/doc.dart';
import 'package:familyquiz/documentation/gridview.dart';
import 'package:familyquiz/screens/profile_screen/profile.dart';
import 'package:familyquiz/welcome/fancy_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:familyquiz/screens/welcome/welcome_screen.dart';
// 👈 Import du bouton stylé

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 223, 132, 250),
              Color.fromARGB(255, 74, 3, 95)
            ],
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Quiz",
                  style: GoogleFonts.ptSerif(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  " Game",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            FancyButton(
              text: "DIAPORAMA",
              onTap: () {
                Get.to(
                  Doc(),
                  transition: Transition.rightToLeftWithFade,
                  duration: const Duration(milliseconds: 1000),
                );
              },
              gradient: const LinearGradient(
                colors: [Color(0xFF9C27B0), Color(0xFFE040FB)],
              ),
            ),
            const SizedBox(height: 20),
            FancyButton(
              text: "GRILLE",
              onTap: () {
                Get.to(
                  Gridview(),
                  transition: Transition.rightToLeftWithFade,
                  duration: const Duration(milliseconds: 1000),
                );
              },
              gradient: const LinearGradient(
                colors: [Color(0xFF8E24AA), Color(0xFFD500F9)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
