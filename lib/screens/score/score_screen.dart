import 'package:familyquiz/constants.dart';
import 'package:familyquiz/controllers/question_controller.dart';
import 'package:familyquiz/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
              InkWell(
                onTap: () => Get.to(QuizScreen()),
                child: Container(
                  width: 240,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.lightGreen],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      "replay",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 3)
            ],
          )
        ],
      ),
    );
  }
}
