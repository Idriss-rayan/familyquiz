import 'dart:ui';
import 'package:familyquiz/controllers/question_controller.dart';
import 'package:familyquiz/welcome/fancy_button.dart';
import 'package:familyquiz/welcome/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../niveau2/niveau2_page.dart';

class Score2 extends StatelessWidget {
  final int score;
  const Score2({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purpleAccent,
              Colors.purple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Score2",
              style: GoogleFonts.comicNeue(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white.withValues(alpha: 0.5),
              ),
            ),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2), // effet translucide
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${score}',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "sur ${_qnController.question1.length}",
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FancyButton(
              text: "Recommencer",
              onTap: () async {
                await _qnController.resetQuiz();
                Get.to(Niveau2Page());
              },
              gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 128, 3, 128).withValues(alpha: 0.5),
                const Color.fromARGB(255, 244, 2, 195).withValues(alpha: 0.3),
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            FancyButton(
              text: "Menu Principal",
              onTap: () async {
                await _qnController.resetQuiz();
                Get.off(StartScreen());
              },
              gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 128, 3, 128).withValues(alpha: 0.5),
                const Color.fromARGB(255, 244, 2, 195).withValues(alpha: 0.3),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
