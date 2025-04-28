import 'package:familyquiz/niveau/niveau1/niveau1_card.dart';
import 'package:familyquiz/niveau/niveau1/niveau1_page.dart';
import 'package:familyquiz/niveau/niveau2/niveau2_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'niveau3/niveau3_card.dart';
import 'niveau4/niveau4_card.dart';
import 'niveau5/niveau5_card.dart';
import 'niveau6/niveau6_card.dart';
import 'niveau7/niveau7_card.dart';

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
                onTap: () => Get.to(
                  Niveau1Page(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 500),
                ),
                child: Niveau1Card(),
              ),
              Niveau2Card(),
              Niveau3Card(),
              Niveau4Card(),
              Niveau5Card(),
              Niveau6Card(),
              Niveau7Card(),
            ],
          )),
    );
  }
}
