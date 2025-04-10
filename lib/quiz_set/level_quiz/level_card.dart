import 'package:familyquiz/quiz_set/level_quiz/level_quiz.dart';
import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Scaffold(body: Level());
        },
      ),
    );
  }
}
