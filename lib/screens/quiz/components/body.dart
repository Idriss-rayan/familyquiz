import 'package:familyquiz/constants.dart';
import 'package:familyquiz/controllers/question_controller.dart';
import 'package:familyquiz/screens/quiz/components/progress_bar.dart';
import 'package:familyquiz/screens/quiz/components/question_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: progressBar(),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text:
                              "/${_questionController.question1.length}", //  text: "/${_questionController.question.length}", PARCE QUE C'EST NOTRE TOUT PREMIER BODY(question ET NON question1)
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: kSecondaryColor),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                child: PageView.builder(
                  // block swipe to next qn
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount:
                      _questionController.question1.length, // de meme ici
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.question1[index], // de meme
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
