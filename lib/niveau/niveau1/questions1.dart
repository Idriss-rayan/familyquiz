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
    "id": 1,
    "question": "Comment était surnommé Ruben Um Nyobé par ses partisans ?",
    "options": ['Mpodol', 'Patriarche', 'Grand Camarade', 'Père du Cameroun'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question":
        "En quelle année Ruben Um Nyobé a-t-il adressé une pétition à l’ONU pour l’indépendance du Cameroun ?",
    "options": ['1945', '1948', '1952', '1954'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "Où exactement Ruben Um Nyobé a-t-il été assassiné par l'armée française ?",
    "options": ['Boumyebel', 'Mbouda', 'Kribi', 'Dschang'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question":
        "Pour quel grand média Alain Foka est-il principalement connu ?",
    "options": ['BBC Afrique', 'TV5 Monde', 'RFI', 'France 24'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
        "Quelle est l’émission emblématique d’Alain Foka sur l’histoire africaine ?",
    "options": [
      'Afrique en marche',
      'Archives d’Afrique',
      "L'Afrique en questions', 'Héritage et Mémoire"
    ],
    "answer_index": 1,
  }
];
