import 'package:familyquiz/models/Questions.dart';

class Question1 extends Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question1({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  }) : super(id: id, question: question, answer: answer, options: options);
}

List<Map<String, dynamic>> sample_data1 = [
  {
    "id": 0,
    "question":
        "Quel pseudonyme Ernest Ouandié utilisait-il en clandestinité ?",
    "options": ["Wamba", "Bassa", "Mbida", "Ntam"],
    "answer_index": 0
  },
  {
    "id": 1,
    "question":
        "Quel était le nom de la conférence fondatrice de l’UPC en 1948 ?",
    "options": ["Douala", "Congrès UPC", "Nationalistes", "Yaoundé"],
    "answer_index": 1
  },
  {
    "id": 2,
    "question": "Dans quelle ville Félix-Roland Moumié a-t-il été empoisonné ?",
    "options": ["Genève", "Paris", "Zurich", "Berne"],
    "answer_index": 0
  },
  {
    "id": 3,
    "question": "Quel est le nom complet de Mongo Beti ?",
    "options": [
      "Alexandre Awala",
      "Bernard Fonlon",
      "Joseph Ekambi",
      "François Biyogo"
    ],
    "answer_index": 0
  },
  {
    "id": 4,
    "question":
        "Quel thème Mongo Beti dénonce-t-il dans 'Main basse sur le Cameroun' ?",
    "options": [
      "Corruption",
      "Colonisation",
      "Conflits ethniques",
      "Éducation"
    ],
    "answer_index": 1
  },
  {
    "id": 5,
    "question": "En quelle année Ahmadou Ahidjo a-t-il quitté la présidence ?",
    "options": ["1981", "1982", "1983", "1984"],
    "answer_index": 1
  },
  {
    "id": 6,
    "question": "Quel était le nom de la radio créée par l’UPC en exil ?",
    "options": [
      "Voix Libre",
      "Radio Mba",
      "Voix des Camerounais Libres",
      "Radio UPC"
    ],
    "answer_index": 2
  },
  {
    "id": 7,
    "question": "Quel poste Paul Biya occupait-il avant la présidence ?",
    "options": [
      "Ambassadeur",
      "Secrétaire général",
      "Ministre affaires étrangères",
      "Consul"
    ],
    "answer_index": 1
  },
  {
    "id": 8,
    "question":
        "Combien de buts Roger Milla a-t-il marqués en Coupe du Monde 1990 ?",
    "options": ["2", "3", "4", "5"],
    "answer_index": 2
  },
  {
    "id": 9,
    "question":
        "En quelle année Alain Foka a-t-il lancé 'Archives d’Afrique' ?",
    "options": ["1995", "1998", "2000", "2002"],
    "answer_index": 1
  },
  {
    "id": 10,
    "question": "Dans quel établissement Ahidjo a-t-il étudié au secondaire ?",
    "options": ["Yaoundé", "Dakar", "Garoua", "Libermann"],
    "answer_index": 1
  },
  {
    "id": 11,
    "question": "Quel est le titre du premier roman de Mongo Beti ?",
    "options": ["Ville cruelle", "Pauvre Christ", "Cruel City", "Sans haine"],
    "answer_index": 0
  },
  {
    "id": 12,
    "question": "En quelle année Ruben Um Nyobé a-t-il saisi l’ONU ?",
    "options": ["1948", "1950", "1952", "1954"],
    "answer_index": 2
  },
  {
    "id": 13,
    "question": "Quel est le nom complet de Paul Biya ?",
    "options": ["Biya Mvondo", "Biya Meka", "Biya Basile", "Biya Nanga"],
    "answer_index": 0
  },
  {
    "id": 14,
    "question": "Dans quel média Alain Foka a-t-il commencé sa carrière ?",
    "options": ["RFI", "Jeune Afrique", "France 24", "Le Monde"],
    "answer_index": 1
  },
  {
    "id": 15,
    "question": "Quel groupe armé Ernest Ouandié dirigeait-il après 1959 ?",
    "options": ["Libération", "Bassa", "Comité UPC", "Front uni"],
    "answer_index": 0
  },
  {
    "id": 16,
    "question": "Dans quel pays Roger Milla jouait-il en 1990 ?",
    "options": ["Cameroun", "France", "Réunion", "Algérie"],
    "answer_index": 2
  },
  {
    "id": 17,
    "question": "Dans quelle ville Um Nyobé a-t-il été enterré secrètement ?",
    "options": ["Edea", "Eseka", "Douala", "Boumyebel"],
    "answer_index": 3
  },
  {
    "id": 18,
    "question": "Quel diplôme Paul Biya a-t-il obtenu à Paris ?",
    "options": ["Administration", "Droit", "Sciences po", "Économie"],
    "answer_index": 0
  },
  {
    "id": 19,
    "question": "Quel est le sous-titre de 'Main basse sur le Cameroun' ?",
    "options": [
      "Autopsie décol.",
      "Indépendance confisquée",
      "Recolonisation",
      "Trahison"
    ],
    "answer_index": 1
  }
];
