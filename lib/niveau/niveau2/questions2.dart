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
    "id": 1,
    "question": "Quel est le livre sacré de l'islam ?",
    "options": ["Torah", "Évangile", "Coran", "Vedas"],
    "answer_index": 2
  },
  {
    "id": 2,
    "question": "Combien de piliers compte l’islam ?",
    "options": ["3", "4", "5", "6"],
    "answer_index": 2
  },
  {
    "id": 3,
    "question":
        "Dans quelle ville est né le prophète Mohammed (paix sur lui) ?",
    "options": ["Médine", "La Mecque", "Jérusalem", "Bagdad"],
    "answer_index": 1
  },
  {
    "id": 4,
    "question": "Comment s'appelle le jeûne obligatoire du mois sacré ?",
    "options": ["Hajj", "Zakat", "Ramadan", "Salat"],
    "answer_index": 2
  },
  {
    "id": 5,
    "question":
        "Combien de fois par jour les musulmans accomplissent-ils la prière (Salat) ?",
    "options": ["3", "4", "5", "6"],
    "answer_index": 2
  },
  {
    "id": 6,
    "question":
        "Quel ange a transmis la révélation au prophète Mohammed (paix sur lui) ?",
    "options": ["Mikail", "Israfil", "Djibril", "Azraïl"],
    "answer_index": 2
  },
  {
    "id": 7,
    "question": "Quelle ville est la destination du pèlerinage (Hajj) ?",
    "options": ["Médine", "Jérusalem", "La Mecque", "Bagdad"],
    "answer_index": 2
  },
  {
    "id": 8,
    "question": "Comment s’appelle l’aumône obligatoire en islam ?",
    "options": ["Sadaqa", "Zakat", "Fitra", "Kaffara"],
    "answer_index": 1
  },
];
