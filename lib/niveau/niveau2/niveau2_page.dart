import 'package:familyquiz/niveau/bar.dart';
import 'package:familyquiz/niveau/controller.dart';
import 'package:familyquiz/niveau/niveau2/question2_card.dart';
import 'package:familyquiz/screens/quiz/components/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/question_controller.dart';

class Niveau2Page extends StatelessWidget {
  const Niveau2Page({super.key});

  @override
  Widget build(BuildContext context) {
    Controller _qController = Get.put(Controller());
    QuestionController _questionController = Get.put(QuestionController());
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFF6A1B9A), Color(0xFFAB47BC)]),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: const progressBar(),
                ),
                SizedBox(height: 20),
                BarNote(),
                SizedBox(height: 20),
                Expanded(
                  child: PageView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _qController.updateTheQnNum,
                    itemCount: _qController.question2.length,
                    itemBuilder: (context, index) => Question2Card(
                      question2: _qController.question2[index],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
