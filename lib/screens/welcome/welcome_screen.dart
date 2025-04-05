import 'package:familyquiz/screens/quiz/components/question_card.dart';
import 'package:familyquiz/screens/quiz/quiz_screen.dart';
import 'package:familyquiz/welcome/fancy_button.dart';
import 'package:familyquiz/welcome/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6FF),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 223, 132, 250),
              Color.fromARGB(255, 74, 3, 95),
            ],
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FancyButton(
                text: "Commencer",
                onTap: () {
                  Get.to(
                    QuizScreen(),
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
                text: "Retour",
                onTap: () {
                  Get.back();
                },
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A1B9A), Color(0xFFAB47BC)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
