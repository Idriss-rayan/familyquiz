import 'package:flutter/material.dart';

class Overviews extends StatelessWidget {
  final List<Map<String, String>> persons = [
    {"id": "1", "name": "Ahmadou Ahidjo"},
    {"id": "2", "name": "Paul Biya"},
    {"id": "3", "name": "Ernest Ouandié"},
    {"id": "4", "name": "Roger Milla"},
    {"id": "5", "name": "Alain Foka"},
    {"id": "6", "name": "Mongo Beti"},
    {"id": "7", "name": "Félix-Roland Moumié"},
    {"id": "8", "name": "Ruben Um Nyobé"},
  ];

  // Liste des figures historiques (avec nom et icône)
  final List<Map<String, dynamic>> figures = [
    {
      "name": "HAMADOU AHIDJO",
      "icon": Icons.account_circle,
      "details": "Premier président du Cameroun.",
      "image": "assets/icons/Ahijo.png",
      "colors": [Colors.white, Colors.grey],
    },
    {
      "name": "PAUL BIYA",
      "icon": Icons.person,
      "details": "Président actuel du Cameroun.",
      "image": "assets/icons/biya.png",
      "colors": [Colors.white, Colors.blue],
    },
    {
      "name": "ERNEST OUANDIÉ",
      "icon": Icons.flag,
      "details": "Révolutionnaire camerounais.",
      "image": "assets/icons/ernest.png",
      "colors": [Color(0xFFD29301), Color(0xFF685201)],
    },
    {
      "name": "ROGER MILLA",
      "icon": Icons.sports_soccer,
      "details": "Légende du football camerounais.",
      "image": "assets/icons/milla.png",
      "colors": [
        Color.fromARGB(255, 210, 248, 219),
        Color.fromARGB(255, 36, 183, 3),
        Colors.green
      ],
    },
    {
      "name": "ALAIN FOKA",
      "icon": Icons.mic,
      "details": "Journaliste et animateur radio.",
      "image": "assets/icons/foka.png",
      "colors": [
        Color.fromARGB(255, 243, 39, 103),
        Color.fromARGB(255, 255, 0, 0),
      ],
    },
    {
      "name": "MONGO BETI",
      "icon": Icons.book,
      "details": "Écrivain et militant politique.",
      "image": "assets/icons/beti.png",
      "colors": [
        Color.fromARGB(255, 241, 185, 4),
        Colors.white,
      ],
    },
    {
      "name": "FÉLIX-ROLAND MOUMIÉ",
      "icon": Icons.history,
      "details": "Leader nationaliste camerounais.",
      "image": "assets/icons/moumie.png",
      "colors": [
        Color.fromARGB(255, 52, 52, 51),
        Colors.white,
      ],
    },
    {
      "name": "RUBEN UM NYOBÉ",
      "icon": Icons.public,
      "details": "Figure de l'indépendance du Cameroun.",
      "image": "assets/icons/um.png",
      "colors": [
        Color.fromARGB(255, 18, 92, 2),
        Color.fromARGB(255, 154, 4, 4),
        Color.fromARGB(255, 229, 244, 12),
      ],
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: figures[index]["name"],
                    image: figures[index]["image"],
                    colors: figures[index]["colors"],
                    details: figures[index]["details"],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
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

// Nouvelle page pour afficher les détails
class DetailPage extends StatelessWidget {
  final String name;
  final String image;
  final List<Color> colors;
  final String details;

  DetailPage(
      {required this.name,
      required this.image,
      required this.colors,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              _buildImageContainer(image),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black),
                ),
                child: Text(name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    details,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      height: 220,
      width: 300,
    );
  }
}
