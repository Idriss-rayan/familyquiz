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
];
