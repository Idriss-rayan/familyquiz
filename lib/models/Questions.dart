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
    "question": "Quel est le plus grand pays d'Afrique par sa superficie ?",
    "options": ['Algérie', 'Soudan', 'Congo', 'Afrique du Sud'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Quelle est la capitale du Nigeria ?",
    "options": ['Lagos', 'Abuja', 'Kano', 'Port Harcourt'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Quel pays est surnommé \"le berceau de l'humanité\" ?",
    "options": ['Égypte', 'Afrique du Sud', 'Éthiopie', 'Kenya'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Quelle est la ville la plus peuplée d'Afrique ?",
    "options": ['Le Caire', 'Lagos', 'Kinshasa', 'Johannesburg'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Quel pays africain est célèbre pour ses pyramides ?",
    "options": ['Maroc', 'Éthiopie', 'Égypte', 'Soudan'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "Quel est le fleuve le plus long d'Afrique ?",
    "options": ['Congo', 'Niger', 'Nil', 'Zambèze'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "Dans quel pays se trouve la ville de Marrakech ?",
    "options": ['Algérie', 'Maroc', 'Tunisie', 'Mauritanie'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Quelle île africaine est la plus grande au monde ?",
    "options": ['Seychelles', 'Madagascar', 'Maurice', 'Zanzibar'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Quel pays africain est connu pour la danse du Gweta ?",
    "options": ['Botswana', 'Ghana', 'Angola', 'Côte d’Ivoire'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "Quel est le pays d'origine du musicien Fela Kuti ?",
    "options": ['Nigeria', 'Ghana', 'Mali', 'Cameroun'],
    "answer_index": 0,
  },
  {
    "id": 11,
    "question": "Dans quel pays se situe la ville de Dakar ?",
    "options": ['Mali', 'Sénégal', 'Guinée', 'Côte d’Ivoire'],
    "answer_index": 1,
  },
  {
    "id": 12,
    "question": "Quelle est la langue officielle de l’Angola ?",
    "options": ['Français', 'Espagnol', 'Portugais', 'Anglais'],
    "answer_index": 2,
  },
  {
    "id": 13,
    "question": "Quel est le pays africain le plus peuplé ?",
    "options": ['Égypte', 'Afrique du Sud', 'Nigéria', 'Éthiopie'],
    "answer_index": 2,
  },
  {
    "id": 14,
    "question": "Dans quel pays se trouve la ville de Kigali ?",
    "options": ['Burundi', 'Ouganda', 'Tanzanie', 'Rwanda'],
    "answer_index": 3,
  },
  {
    "id": 15,
    "question": "Quel pays est célèbre pour le parc national du Serengeti ?",
    "options": ['Kenya', 'Tanzanie', 'Afrique du Sud', 'Zambie'],
    "answer_index": 1,
  },
  {
    "id": 16,
    "question":
        "Quel est le pays d'origine du célèbre écrivain Chinua Achebe ?",
    "options": ['Ghana', 'Nigeria', 'Kenya', 'Afrique du Sud'],
    "answer_index": 1,
  },
  {
    "id": 17,
    "question": "Quelle ville abrite le siège de l'Union Africaine ?",
    "options": ['Lagos', 'Addis-Abeba', 'Nairobi', 'Le Caire'],
    "answer_index": 1,
  },
  {
    "id": 18,
    "question": "Quel pays est surnommé \"le pays des mille collines\" ?",
    "options": ['Rwanda', 'Burundi', 'Madagascar', 'Éthiopie'],
    "answer_index": 0,
  },
  {
    "id": 19,
    "question": "Quelle est la monnaie officielle du Ghana ?",
    "options": ['Cedi', 'Naira', 'Franc CFA', 'Shilling'],
    "answer_index": 0,
  },
  {
    "id": 20,
    "question": "Quel pays abrite la célèbre ville antique de Tombouctou ?",
    "options": ['Niger', 'Mali', 'Soudan', 'Tchad'],
    "answer_index": 1,
  },
];
