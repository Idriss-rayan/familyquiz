import 'package:familyquiz/quiz_set/level_quiz/level_quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Statistique extends StatelessWidget {
  const Statistique({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => Get.to(
                Level(),
                transition: Transition.rightToLeftWithFade,
                duration: Duration(
                  milliseconds: 1000,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 500,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.purple),
                    color: Colors.purple,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 111, 4, 130),
                        blurRadius: 7,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
