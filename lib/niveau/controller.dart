import 'dart:math';
import 'package:familyquiz/niveau/niveau2/questions2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'niveau1/congrat_page.dart';
import 'niveau2/score2.dart';

class Controller extends GetxController with SingleGetTickerProviderMixin {
  //declaration des variables d'animations
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  //gestion des pages ... genre controllent les pages du quiz, permetent de passer d'une page a l'autre
  late PageController _pageController;
  PageController get pageController => this._pageController;

  late PageController _pageController2;
  PageController get pageController2 => this._pageController2;

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
    _pageController2 = PageController();
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

      try {
        if (_pageController.hasClients && !_pageController.positions.isEmpty) {
          _pageController.jumpToPage(nextIndex);
        } else if (_pageController2.hasClients &&
            !_pageController2.positions.isEmpty) {
          _pageController2.jumpToPage(nextIndex);
        } else {
          _createNewControllerAndJump(nextIndex);
        }
      } catch (e) {
        debugPrint("Erreur de navigation: $e");
        _handleNavigationError(nextIndex);
      }

      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    } else if (_numOfCorrectAns >= question2.length) {
      Get.off(
        CongratPage(
          imagePath: 'assets/images/cong.png',
          message: 'FELICITATIONS!',
          onPressed: () {
            Get.back();
          },
        ),
        transition: Transition.noTransition,
      );
    } else {
      Get.offAll(Score2(score: _numOfCorrectAns));
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> resetQuiz() async {
    _askedQuestions.clear();
    _numOfCorrectAns = 0;
    _questionNumber.value = 1;
    _Answered = false;
    _selectedAns = 0;
    _correctAns = 0;
    _animationController.reset();
    _question2.shuffle();

    _animationController.forward().whenComplete(nextQuestion);
  }

  void _createNewControllerAndJump(int index) {
    _pageController2 = PageController(initialPage: index);
    Get.forceAppUpdate(); // Force le recalcul de l'interface
  }

  void _handleNavigationError(int index) {
    Future.delayed(
      Duration(milliseconds: 100),
      () {
        _pageController2 = PageController(initialPage: index);
      },
    );
  }
}
