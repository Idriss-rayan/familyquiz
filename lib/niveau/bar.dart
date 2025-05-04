import 'package:familyquiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: BarNote(),
      ),
    );
  }
}

class BarNote extends StatelessWidget {
  BarNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: 200,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.3),
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        ),
        child: Center(
          child: Center(
            child: Text(
              "${_questionController.question1.length} Questions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void compteur() {
  //
}
