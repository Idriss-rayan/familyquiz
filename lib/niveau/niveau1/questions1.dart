class Question1 {
  final int id, answer;
  final String question;
  final List<String> options;

  Question1({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

List<Map<String, dynamic>> sample_data1 = [
  {
    "id": 1,
    "question":
        "En quelle année Amadou Ahidjo devient-il vice-président du Grand Conseil de l'Afrique-Équatoriale ?",
    "options": ['1952', '1955', '1957', '1959'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question":
        "Quel était le parti politique d’Amadou Ahidjo après l’indépendance ?",
    "options": ['UPC', 'UNDP', 'UC → UNC → RDPC', 'MDR'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "Quel traité a officiellement marqué la transition du Cameroun sous administration française vers un État indépendant sous Ahidjo ?",
    "options": [
      'Accords de Foumban',
      'Accords de Yaoundé',
      'Accords de Paris',
      'Accords de Brazzaville'
    ],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question":
        "En quelle année Paul Biya a-t-il instauré le multipartisme au Cameroun ?",
    "options": ['1982', '1985', '1990', '1992'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question":
        "Quelle crise politique a failli renverser Paul Biya en avril 1984 ?",
    "options": [
      'Révolte des étudiants de Yaoundé',
      'Tentative de coup d’État militaire',
      'Assassinat de ses ministres',
      'Soulèvement des Bakassi Boys'
    ],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question":
        "Quelle équipe européenne a révélé Roger Milla à l'international en club ?",
    "options": ['AS Monaco', 'Montpellier HSC', 'Valenciennes FC', 'SC Bastia'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question":
        "Contre quelle équipe Roger Milla a-t-il marqué un doublé en quart de finale de la Coupe du Monde 1990 ?",
    "options": ['Colombie', 'Angleterre', 'Argentine', 'URSS'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question":
        "Quelle était la fonction exacte d’Ernest Ouandié au sein de l’UPC avant sa clandestinité ?",
    "options": [
      'Trésorier du parti',
      'Secrétaire général',
      'Responsable des relations internationales',
      'Président du Comité révolutionnaire'
    ],
    "answer_index": 1,
  },
];
