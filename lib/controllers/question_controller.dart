import 'dart:math';
import 'package:familyquiz/models/Questions.dart';
import 'package:familyquiz/screens/score/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
          id: question['id'] ?? 0,
          question: question['question'] ?? "No question",
          options:
              (question['options'] as List<dynamic>?)?.cast<String>() ?? [],
          answer: question['answer_index'] ?? 0,
        ),
      )
      .toList();

  List<Question> get questions => this._questions;

  bool _Answered = false;
  bool get isAnswered => this._Answered;

  late int _correctAns = 0;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  late int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  final List<int> _askedQuestions = []; // Store already asked questions
  final Random _random = Random();

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    _animation = Tween(begin: 0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);

    _pageController = PageController();
    super.onInit();
  }

  void checkAns(Question question, int selectedIndex) {
    _Answered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    _animationController.stop();
    update();

    Future.delayed(Duration(milliseconds: 1300), () {
      nextQuestion();
    });
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void nextQuestion() {
    if (_askedQuestions.length < _questions.length) {
      _Answered = false;

      // Pick a random question that hasn't been asked
      int nextIndex;
      do {
        nextIndex = _random.nextInt(_questions.length);
      } while (_askedQuestions.contains(nextIndex));

      _askedQuestions.add(nextIndex);
      _questionNumber.value = nextIndex + 1;

      _pageController.jumpToPage(nextIndex);

      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
