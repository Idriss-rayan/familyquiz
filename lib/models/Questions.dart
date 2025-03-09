class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Qui est plus intelligent selon le texte ?",
    "options": ['Samira', 'Rayan', 'Les deux sont égaux', 'On ne sait pas'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Quand Rayan est-il né ?",
    "options": ['6 juin 2002', '6 juillet 2003', '6 juin 2003', '6 mai 2003'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Où Rayan et Samira sont-ils allés ensemble ?",
    "options": ['McDonald\'s', 'Pizza Hut', 'KFC', 'Burger King'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Dans quel quartier se trouvait le KFC ?",
    "options": ['Dhanmondi', 'Gulshan', 'Uttara', 'Banani'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Pourquoi ont-ils voyagé au Bangladesh ?",
    "options": [
      'Pour des vacances',
      'Pour des études avec une bourse',
      'Pour un travail',
      'Pour une compétition sportive'
    ],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Combien de personnes étaient dans leur groupe initialement ?",
    "options": ['8', '9', '10', '11'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "Combien de personnes ont finalement voyagé ?",
    "options": ['8', '9', '10', '11'],
    "answer_index": 1,
  },
];
