import 'package:familyquiz/documentation/doc.dart';
import 'package:flutter/material.dart';

class Overviews extends StatelessWidget {
  // Liste des figures historiques (avec nom et icône)
  final List<Map<String, dynamic>> figures = [
    {
      "name": "HAMADOU AHIDJO",
      "icon": Icons.person,
      "details": "Premier président du Cameroun."
    },
    {
      "name": "PAUL BIYA",
      "icon": Icons.person,
      "details": "Président actuel du Cameroun."
    },
    {
      "name": "ERNEST OUANDIÉ",
      "icon": Icons.person,
      "details": "Révolutionnaire camerounais."
    },
    {
      "name": "ROGER MILLA",
      "icon": Icons.person,
      "details": "Légende du football camerounais."
    },
    {
      "name": "ALAIN FOKA",
      "icon": Icons.person,
      "details": "Journaliste et animateur radio."
    },
    {
      "name": "MONGO BETI",
      "icon": Icons.person,
      "details": "Écrivain et militant politique."
    },
    {
      "name": "FÉLIX-ROLAND MOUMIÉ",
      "icon": Icons.person,
      "details": "Leader nationaliste camerounais."
    },
    {
      "name": "RUBEN UM NYOBÉ",
      "icon": Icons.person,
      "details": "Figure de l'indépendance du Cameroun."
    },
    {
      "name": "Inconnu",
      "icon": Icons.question_mark,
      "details": "Personnalité mystère."
    },
    {
      "name": "Autre",
      "icon": Icons.more_horiz,
      "details": "Autres figures historiques."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
            child: Text("Overviews", style: TextStyle(color: Colors.white))),
      ),
      body: GridView.builder(
        itemCount: figures.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 colonnes
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Doc(),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 69, 151, 160),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(figures[index]["icon"],
                      size: 50,
                      color: Colors.white), // Icône au lieu de l'image
                  SizedBox(height: 5),
                  Text(
                    figures[index]["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
