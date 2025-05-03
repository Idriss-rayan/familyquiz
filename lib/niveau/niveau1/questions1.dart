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
    "question": "Qui est le premier président du Cameroun ?",
    "options": ["Paul Biya", "Ahmadou Ahidjo", "Ernest Ouandié", "Roger Milla"],
    "answer_index": 1
  },
  {
    "id": 1,
    "question": "En quelle année Ahmadou Ahidjo devient-il Premier Ministre ?",
    "options": ["1957", "1958", "1959", "1960"],
    "answer_index": 1
  },
  {
    "id": 2,
    "question": "Qui est le président actuel du Cameroun (en 2025) ?",
    "options": ["Ahmadou Ahidjo", "Paul Biya", "Roger Milla", "Mongo Beti"],
    "answer_index": 1
  },
  {
    "id": 3,
    "question": "Dans quel sport Roger Milla est-il célèbre ?",
    "options": ["Basketball", "Athlétisme", "Football", "Tennis"],
    "answer_index": 2
  },
  {
    "id": 4,
    "question":
        "Quel journaliste camerounais anime l’émission Archives d’Afrique ?",
    "options": ["Alain Foka", "Mongo Beti", "Ernest Ouandié", "Roger Milla"],
    "answer_index": 0
  },
  {
    "id": 5,
    "question": "Quel est le roman célèbre de Mongo Beti ?",
    "options": [
      "Le Pauvre Christ de Bomba",
      "L’Avare",
      "Les Misérables",
      "L’Enfant noir"
    ],
    "answer_index": 0
  },
  {
    "id": 6,
    "question":
        "Qui est surnommé le « vieux renard » du football camerounais ?",
    "options": ["Alain Foka", "Paul Biya", "Roger Milla", "Ahmadou Ahidjo"],
    "answer_index": 2
  },
  {
    "id": 7,
    "question": "Dans quel média Alain Foka travaille-t-il ?",
    "options": ["RFI", "BBC", "France 24", "VOA"],
    "answer_index": 0
  },
  {
    "id": 8,
    "question": "Quel homme politique camerounais a été tué en 1958 ?",
    "options": ["Ernest Ouandié", "Ruben Um Nyobé", "Paul Biya", "Roger Milla"],
    "answer_index": 1
  },
  {
    "id": 9,
    "question": "Dans quel pays Félix-Roland Moumié a-t-il été empoisonné ?",
    "options": ["Cameroun", "France", "Suisse", "Congo"],
    "answer_index": 2
  },
  {
    "id": 10,
    "question": "Dans quelle ville Ahmadou Ahidjo est-il né ?",
    "options": ["Garoua", "Yaoundé", "Douala", "Bafoussam"],
    "answer_index": 0
  },
  {
    "id": 11,
    "question": "Quel parti politique Ernest Ouandié représentait-il ?",
    "options": ["RDPC", "UPC", "PDC", "MRC"],
    "answer_index": 1
  },
  {
    "id": 12,
    "question": "Dans quelle ville Ernest Ouandié a-t-il été exécuté ?",
    "options": ["Bafoussam", "Yaoundé", "Garoua", "Douala"],
    "answer_index": 0
  },
  {
    "id": 13,
    "question": "En quelle année Paul Biya devient-il président du Cameroun ?",
    "options": ["1975", "1980", "1982", "1985"],
    "answer_index": 2
  },
  {
    "id": 14,
    "question": "Quelle est la nationalité d’Alain Foka ?",
    "options": ["Ivoirienne", "Camerounaise", "Française", "Gabonais"],
    "answer_index": 1
  },
  {
    "id": 15,
    "question": "Quel est le nom complet de Roger Milla ?",
    "options": [
      "Roger Albert Milla",
      "Albert Roger Milla",
      "Milla Albert",
      "Roger Milla Ndongo"
    ],
    "answer_index": 1
  },
  {
    "id": 16,
    "question": "Qui a lutté pour l’indépendance du Cameroun ?",
    "options": ["Ruben Um Nyobé", "Roger Milla", "Paul Biya", "Alain Foka"],
    "answer_index": 0
  },
  {
    "id": 17,
    "question": "Dans quelle région est né Ruben Um Nyobé ?",
    "options": ["Sud", "Nord", "Ouest", "Est"],
    "answer_index": 0
  },
  {
    "id": 18,
    "question": "Quel écrivain camerounais a critiqué la colonisation ?",
    "options": ["Mongo Beti", "Alain Foka", "Paul Biya", "Roger Milla"],
    "answer_index": 0
  },
  {
    "id": 19,
    "question": "Quel parti politique Paul Biya a-t-il dirigé ?",
    "options": ["UPC", "UNC", "RDPC", "PDC"],
    "answer_index": 2
  },
  {
    "id": 20,
    "question": "Quel média diffuse l’émission Archives d’Afrique ?",
    "options": ["RFI", "BBC", "France24", "VOA"],
    "answer_index": 0
  }
];
