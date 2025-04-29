import 'package:familyquiz/constants.dart';
import 'package:familyquiz/controllers/question_controller.dart';
import 'package:familyquiz/models/Questions.dart';
import 'package:familyquiz/screens/quiz/components/option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'questions2.dart';

class Question2Card extends StatelessWidget {
  const Question2Card({super.key, required this.question2});

  final Question2 question2;

  @override
  Widget build(BuildContext context) {
    QuestionController _qcontroller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(question2.question,
              style: GoogleFonts.alexandria(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              )),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          ...List.generate(
            question2.options.length,
            (index) => Option(
              index: index,
              text: question2.options[index],
              press: () => _qcontroller.checkAns(question2 as Question, index),
            ),
          ),
        ],
      ),
    );
  }
}
