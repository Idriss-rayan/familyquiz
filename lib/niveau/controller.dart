import 'dart:math';
import 'package:familyquiz/niveau/niveau2/questions2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'niveau1/score1.dart';

class Controller extends GetxController with SingleGetTickerProviderMixin {
  //declaration des variables d'animations
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  //gestion des pages ... genre controllent les pages du quiz, permetteent de passer d'une page a l'autre
  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question2> _question2 = sample_data2
      .map(
        (question) => Question2(
          id: question['id'],
          question: question['question'],
          options: (question['options']),
          answer: question['answer_index'],
        ),
      )
      .toList();

  List<Question2> get question2 => this._question2;
  int get questiondivider => _question2.length;

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
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween(begin: 0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);

    _pageController = PageController();
    _question2.shuffle();
    super.onInit();
  }

  void checkAns(Question2 question, int selectedIndex) {
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
    if (_askedQuestions.length < _question2.length) {
      _Answered = false;

      // Pick a random question that hasn't been asked
      int nextIndex;
      do {
        nextIndex = _random.nextInt(_question2.length);
      } while (_askedQuestions.contains(nextIndex));

      _askedQuestions.add(nextIndex);
      _questionNumber.value = nextIndex;

      _pageController.jumpToPage(nextIndex);

      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(Score1(
        score: 0,
      ));
      update();
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
