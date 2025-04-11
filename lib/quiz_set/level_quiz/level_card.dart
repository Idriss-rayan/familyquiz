import 'package:familyquiz/quiz_set/level_quiz/level_quiz.dart';
import 'package:familyquiz/quiz_set/level_quiz/list_quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Get.to(Level()),
            child: ListQuiz(),
          );
        },
      ),
    );
  }
}
