import 'package:familyquiz/constants.dart';
import 'package:familyquiz/controllers/question_controller.dart';
import 'package:familyquiz/models/Questions.dart';
import 'package:familyquiz/niveau/niveau1/questions1.dart';
import 'package:familyquiz/screens/quiz/components/option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Question1Card extends StatelessWidget {
  const Question1Card({super.key, required this.question1});

  final Question1 question1;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(question1.question,
              style: GoogleFonts.alexandria(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              )),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          ...List.generate(
            question1.options.length,
            (index) => Option(
              index: index,
              text: question1.options[index],
              press: () => _controller.checkAns(question1 as Question, index),
            ),
          )
        ],
      ),
    );
  }
}
