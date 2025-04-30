import 'package:familyquiz/niveau/niveau1/niveau1_card.dart';
import 'package:familyquiz/niveau/niveau1/niveau1_page.dart';
import 'package:familyquiz/niveau/niveau2/niveau2_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'niveau2/niveau2_page.dart';
import 'niveau3/niveau3_card.dart';
import 'niveau4/niveau4_card.dart';
import 'niveau5/niveau5_card.dart';
import 'niveau6/niveau6_card.dart';
import 'niveau7/niveau7_card.dart';

class ListeNiveau extends StatelessWidget {
  const ListeNiveau({super.key});

  // Fonction pour afficher un CircularProgressIndicator et naviguer ensuite
  Future<void> _navigateWithLoader(BuildContext context, Widget page) async {
    // Afficher le loader
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        );
      },
    );

    // Petite pause pour simuler un chargement
    await Future.delayed(const Duration(milliseconds: 500));

    // Fermer le loader
    Navigator.of(context).pop();

    // Naviguer vers la page souhaitée
    Get.to(
      page,
      transition: Transition.rightToLeftWithFade,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 229, 131, 246),
        ),
        child: ListView(
          children: [
            InkWell(
              onTap: () => _navigateWithLoader(context, Niveau1Page()),
              child: const Niveau1Card(),
            ),
            InkWell(
              onTap: () => _navigateWithLoader(context, Niveau2Page()),
              child: Niveau2Card(),
            ),
            const Niveau2Page(),
            const Niveau4Card(),
            const Niveau5Card(),
            const Niveau6Card(),
            const Niveau7Card(),
          ],
        ),
      ),
    );
  }
}
