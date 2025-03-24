import 'package:familyquiz/controllers/question_controller.dart';
import 'package:familyquiz/screens/quiz/components/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text("skip"))
        ],
      ),
      body: Body(),
    );
  }
}
