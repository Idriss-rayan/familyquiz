import 'package:familyquiz/models/Questions.dart';

class Question2 extends Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question2({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  }) : super(id: id, question: question, answer: answer, options: options);
}

List<Map<String, dynamic>> sample_data2 = [
  {
    "id": 0,
    "question": "Dans quelle ville Ahmadou Ahidjo est-il mort en exil ?",
    "options": ["Dakar", "Abidjan", "Conakry", "Paris"],
    "answer_index": 0
  },
  {
    "id": 1,
    "question":
        "Quel pseudonyme Mongo Beti a-t-il utilisé pour 'Ville cruelle' ?",
    "options": ["Eza Boto", "Mongo Beti", "Beti Awala", "Beti Eza"],
    "answer_index": 0
  },
  {
    "id": 2,
    "question": "Comment s’appelait l’épouse de Félix-Roland Moumié ?",
    "options": [
      "Marthe Moumié",
      "Suzanne Moumié",
      "Monique Ekindi",
      "Rose Um Nyobé"
    ],
    "answer_index": 0
  },
  {
    "id": 3,
    "question":
        "En quelle année Roger Milla a-t-il gagné son 1er Ballon d’Or africain ?",
    "options": ["1974", "1976", "1978", "1980"],
    "answer_index": 1
  },
  {
    "id": 4,
    "question": "Dans quelle école Ruben Um Nyobé a-t-il été formé ?",
    "options": [
      "Lycée Leclerc",
      "École Ponty",
      "Collège Libermann",
      "Lycée Joss"
    ],
    "answer_index": 1
  },
  {
    "id": 5,
    "question": "Quel est le titre du livre d’Alain Foka publié en 2009 ?",
    "options": ["Avenir ?", "Mémoire confisquée", "Entretiens", "Grand bond ?"],
    "answer_index": 1
  },
  {
    "id": 6,
    "question": "Dans quel village Ernest Ouandié est-il né ?",
    "options": ["Foumban", "Bana", "Bagangté", "Batcha"],
    "answer_index": 3
  },
  {
    "id": 7,
    "question": "Quel roman Mongo Beti a-t-il écrit après l’exil ?",
    "options": ["Perpétue", "Trop de soleil", "Branle-bas", "Guillaume Ismaël"],
    "answer_index": 1
  },
  {
    "id": 8,
    "question": "Quel poste Paul Biya occupait-il avant Premier ministre ?",
    "options": ["Ministre", "Directeur cabinet", "SG présidence", "Éducation"],
    "answer_index": 2
  },
  {
    "id": 9,
    "question": "Quel était le nom du journal clandestin de l’UPC ?",
    "options": [
      "Voix du Peuple",
      "Patriote",
      "Étincelle",
      "Cameroun Indépendant"
    ],
    "answer_index": 0
  },
  {
    "id": 10,
    "question": "Dans quelle ville Roger Milla a-t-il commencé sa carrière ?",
    "options": ["Douala", "Yaoundé", "Ebolowa", "Nkongsamba"],
    "answer_index": 3
  },
  {
    "id": 11,
    "question":
        "En quelle année Paul Biya a-t-il eu son diplôme à Sciences Po ?",
    "options": ["1961", "1962", "1963", "1964"],
    "answer_index": 1
  },
  {
    "id": 12,
    "question": "Quel livre de Mongo Beti attaque Ahidjo ?",
    "options": ["Main basse", "Perpétue", "Soleil", "Lettre ouverte"],
    "answer_index": 0
  },
  {
    "id": 13,
    "question": "Quel leader a été exécuté avec Ouandié ?",
    "options": ["Ndongmo", "Essomba", "Pierre", "Kingué"],
    "answer_index": 0
  },
  {
    "id": 14,
    "question": "Quel club Milla a-t-il aidé à monter en D1 en 1981 ?",
    "options": ["Bastia", "Valenciennes", "Saint-Étienne", "Montpellier"],
    "answer_index": 3
  },
  {
    "id": 15,
    "question": "En quelle année Alain Foka a-t-il eu la Légion d’honneur ?",
    "options": ["2005", "2007", "2009", "2012"],
    "answer_index": 1
  },
  {
    "id": 16,
    "question": "Quel est le village natal de Ruben Um Nyobé ?",
    "options": ["Boumyebel", "Eseka", "Makak", "Ngog"],
    "answer_index": 0
  },
  {
    "id": 17,
    "question": "Quel roman inachevé de Mongo Beti est publié après sa mort ?",
    "options": [
      "Branle-bas",
      "Forêt vierge",
      "L’histoire du fou",
      "Trop de soleil"
    ],
    "answer_index": 2
  },
  {
    "id": 18,
    "question": "Sous quel gouvernement Moumié a-t-il été assassiné ?",
    "options": ["De Gaulle", "Debré", "Pflimlin", "Mollet"],
    "answer_index": 1
  },
  {
    "id": 19,
    "question": "Quel parti politique Paul Biya a-t-il dirigé avant l’UNC ?",
    "options": ["PPC", "PNC", "PCU", "UNC"],
    "answer_index": 1
  }
];
