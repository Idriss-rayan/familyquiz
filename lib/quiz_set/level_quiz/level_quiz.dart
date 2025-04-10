import 'package:familyquiz/controllers/question_controller.dart';
import 'package:familyquiz/screens/quiz/components/progress_bar.dart';
import 'package:familyquiz/screens/quiz/components/question_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Level extends StatelessWidget {
  const Level({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(0),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: const progressBar(),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: PageView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _questionController.updateTheQnNum,
                    itemCount: _questionController.questions.length,
                    itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
