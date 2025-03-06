import 'package:familyquiz/models/Questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  // Lets animated our progress bar

  late AnimationController _animationController;
  late Animation _animation;
  // so that we can access our animation outside
  Animation get animation => this._animation;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
          id: question['id'] ?? 0, // Vérifier null pour l'ID
          question: question['question'] ?? "No question", // Éviter null
          options: (question['options'] as List<dynamic>?)?.cast<String>() ??
              [], // Éviter null
          answer: question['answer_index'] ?? 0, // Éviter null
        ),
      )
      .toList();

  List<Question> get questions => this._questions;

  bool _answered = false;
  bool get isAnswered => _answered;

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween(begin: 0, end: 1.0).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation
    _animationController.forward();
    super.onInit();
  }
}
