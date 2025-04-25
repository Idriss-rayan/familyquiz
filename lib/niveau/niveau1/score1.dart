import 'dart:ui';
import 'package:familyquiz/controllers/question_controller.dart';
import 'package:familyquiz/niveau/niveau1/niveau1_page.dart';
import 'package:familyquiz/welcome/fancy_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Score1 extends StatelessWidget {
  const Score1({super.key});

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
              "Score",
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
                child: Text(
                  '${_qnController.numOfCorrectAns * 10}',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FancyButton(
              text: "Recommencer",
              //onTap: () => Get.to(StartScreen()),
              //onTap: () => Get.off(Niveau1Page()),
              onTap: () async {
                await _qnController.resetQuiz();
                Get.to(Niveau1Page());
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
