import 'package:familyquiz/constants.dart';
import 'package:familyquiz/models/Questions.dart';
import 'package:familyquiz/screens/quiz/components/option.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sample_data[0]['question'],
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: kBlackColor),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          option(),
          option(),
          option(),
        ],
      ),
    );
  }
}
