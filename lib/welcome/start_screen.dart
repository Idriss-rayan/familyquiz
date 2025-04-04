import 'package:familyquiz/welcome/fancy_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:familyquiz/documentation/doc.dart';
import 'package:familyquiz/screens/welcome/welcome_screen.dart';
// 👈 Import du bouton stylé

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
            const Spacer(),
            FancyButton(
              text: "Carrière",
              onTap: () {
                Get.to(
                  const WelcomeScreen(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 1000),
                );
              },
              gradient: const LinearGradient(
                colors: [Color(0xFF9C27B0), Color(0xFFE040FB)],
              ),
            ),
            const SizedBox(height: 20),
            FancyButton(
              text: "Compétition",
              onTap: () {},
              gradient: const LinearGradient(
                colors: [Color(0xFF8E24AA), Color(0xFFD500F9)],
              ),
            ),
            const SizedBox(height: 20),
            FancyButton(
              text: "Documentation",
              onTap: () {
                Get.to(
                  Doc(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 1000),
                );
              },
              gradient: const LinearGradient(
                colors: [Color(0xFF6A1B9A), Color(0xFFAB47BC)],
              ),
            ),
            const SizedBox(height: 20),
            FancyButton(
              text: "Profile et rang",
              onTap: () {},
              gradient: const LinearGradient(
                colors: [Color(0xFF4A148C), Color(0xFF7B1FA2)],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
