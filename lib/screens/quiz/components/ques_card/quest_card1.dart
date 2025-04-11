import 'package:familyquiz/constants.dart';
import 'package:familyquiz/controllers/question_controller.dart';
import 'package:familyquiz/models/Questions.dart';
import 'package:familyquiz/screens/quiz/components/option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestCard1 extends StatelessWidget {
  const QuestCard1({
    super.key,
    required this.quest1,
  });

  final Question quest1;

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
          Text(quest1.question,
              style: GoogleFonts.alexandria(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              )),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          ...List.generate(
            quest1.options.length,
            (index) => Option(
              index: index,
              text: quest1.options[index],
              press: () => _controller.checkAns(quest1, index),
            ),
          )
        ],
      ),
    );
  }
}
