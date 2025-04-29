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
    "question": "En quelle année Hamadou Ahidjo devient-il Premier Ministre ?",
    "options": ['1957', '1958', '1959', '1960'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "À quel parti politique Paul Biya a-t-il appartenu avant de devenir président ?",
    "options": ['UPC', 'UNC', 'RDPC', 'PDC'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Quel est le lieu d'exécution d’Ernest Ouandié ?",
    "options": ['Bafoussam', 'Yaoundé', 'Garoua', 'Bamenda'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question":
        "À quel âge Roger Milla a-t-il participé à la Coupe du Monde 1990 ?",
    "options": ['32', '36', '38', '42'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
        "Dans quel média Alain Foka a-t-il fait sa carrière principale ?",
    "options": ['BBC', 'RFI', 'VOA', 'France24'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Quel est le roman le plus célèbre de Mongo Beti ?",
    "options": ['Ville cruelle', 'Le Pauvre Christ', 'Main basse', 'Perpétue'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Dans quel pays Félix-Roland Moumié a-t-il été empoisonné ?",
    "options": ['Cameroun', 'France', 'Suisse', 'Congo'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "Quelle année Ruben Um Nyobé a-t-il été tué ?",
    "options": ['1955', '1957', '1958', '1960'],
    "answer_index": 2,
  },
];
