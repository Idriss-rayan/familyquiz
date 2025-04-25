import 'package:familyquiz/niveau/niveau1/niveau1_card.dart';
import 'package:familyquiz/niveau/niveau1/niveau1_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListeNiveau extends StatelessWidget {
  const ListeNiveau({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 229, 131, 246),
          ),
          child: ListView(
            children: [
              InkWell(
                onTap: () => Get.off(
                  Niveau1Page(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 500),
                ),
                child: Niveau1Card(),
              ),
              Niveau1Card(),
              Niveau1Card(),
              Niveau1Card(),
              Niveau1Card(),
              Niveau1Card(),
              Niveau1Card(),
            ],
          )),
    );
  }
}
