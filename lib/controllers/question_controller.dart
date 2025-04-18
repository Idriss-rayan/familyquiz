import 'dart:math';
import 'package:familyquiz/models/Questions.dart';
import 'package:familyquiz/niveau/niveau1/questions1.dart';
import 'package:familyquiz/niveau/niveau1/score1.dart';
import 'package:familyquiz/screens/score/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  //declaration des variables d'animations
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  //gestion des pages ... genre controllent les pages du quiz, permetteent de passer d'une page a l'autre
  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
          id: question['id'],
          question: question['question'],
          options: (question['options']),
          answer: question['answer_index'],
        ),
      )
      .toList();

  late List<Question> _quest1 = sample_data
      .map(
        (question) => Question(
          id: question['id'],
          question: question['question'],
          options: (question['options']),
          answer: question['answer_index'],
        ),
      )
      .toList();

  late List<Question1> _question1 = sample_data1
      .map(
        (question) => Question1(
          id: question['id'],
          question: question['question'],
          options: (question['options']),
          answer: question['answer_index'],
        ),
      )
      .toList();

  List<Question> get questions => this._questions;
  List<Question> get quest1 => this._quest1;
  List<Question1> get question1 => this._question1;

  // int QuestionDivider() {
  //   _quest1 = _questions.sublist(0, 5);
  //   return _quest1.length;
  // }

  int get questiondivider => _question1.length;

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
    _question1.shuffle();
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
    if (_askedQuestions.length < _question1.length) {
      _Answered = false;

      // Pick a random question that hasn't been asked
      int nextIndex;
      do {
        nextIndex = _random.nextInt(_question1.length);
      } while (_askedQuestions.contains(nextIndex));

      _askedQuestions.add(nextIndex);
      _questionNumber.value = nextIndex;

      _pageController.jumpToPage(nextIndex);

      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(Score1());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
