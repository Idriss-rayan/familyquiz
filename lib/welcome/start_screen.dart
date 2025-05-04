import 'dart:io';

import 'package:familyquiz/documentation/choose_page.dart';
import 'package:familyquiz/welcome/fancy_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../niveau/liste_niveau.dart';
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
                    fontSize: 10,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 150),
            FancyButton(
              text: "commencer",
              onTap: () {
                Get.to(
                  const ListeNiveau(),
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
              text: "Documentation",
              onTap: () {
                Get.to(
                  ChoosePage(),
                  transition: Transition.rightToLeftWithFade,
                  duration: const Duration(milliseconds: 1000),
                );
              },
              gradient: const LinearGradient(
                colors: [Color(0xFF6A1B9A), Color(0xFFAB47BC)],
              ),
            ),
            const SizedBox(height: 20),
            FancyButton(
              text: "Quitter",
              onTap: () {
                exit(0);
              },
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
