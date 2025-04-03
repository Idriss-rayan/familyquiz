class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List<Map<String, dynamic>> sample_data = [
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
    "id": 4,
    "question":
        "Quel était le premier poste ministériel occupé par Paul Biya sous Ahidjo ?",
    "options": [
      'Ministre des Finances',
      'Ministre de l’Éducation nationale',
      'Ministre de la Justice',
      'Secrétaire général de la Présidence'
    ],
    "answer_index": 3,
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
    "id": 8,
    "question":
        "Lors de la Coupe du Monde 1990, quel était le surnom donné à Roger Milla par les médias internationaux ?",
    "options": [
      'Le Vieux Lion',
      'Le Magicien de Yaoundé',
      'Le Renard du Cameroun',
      'Le Vieux Renard'
    ],
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
  {
    "id": 11,
    "question": "Dans quelle ville Ernest Ouandié a-t-il été exécuté en 1971 ?",
    "options": ['Douala', 'Bafoussam', 'Garoua', 'Yaoundé'],
    "answer_index": 1,
  },
  {
    "id": 12,
    "question":
        "Quel pays a soutenu clandestinement Ernest Ouandié dans sa lutte contre le régime camerounais ?",
    "options": ['URSS', 'Chine', 'Cuba', 'Algérie'],
    "answer_index": 0,
  },
  {
    "id": 13,
    "question":
        "Dans quelle ville Félix Moumié a-t-il été empoisonné par les services secrets français ?",
    "options": ['Genève', 'Bruxelles', 'Paris', 'Berlin'],
    "answer_index": 0,
  },
  {
    "id": 14,
    "question": "Quel était le surnom donné à Félix Moumié par ses partisans ?",
    "options": [
      'Le Médecin du Peuple',
      'Le Lion du Maquis',
      "Le Che Camerounais', 'L'Homme de l'UPC"
    ],
    "answer_index": 0,
  },
  {
    "id": 15,
    "question":
        "Qui était l’agent français responsable de l’assassinat de Félix Moumié ?",
    "options": [
      'William Bechtel',
      'Jacques Foccart',
      'Paul Grossin',
      'Maurice Robert'
    ],
    "answer_index": 0,
  },
  {
    "id": 16,
    "question": "Comment était surnommé Ruben Um Nyobé par ses partisans ?",
    "options": ['Mpodol', 'Patriarche', 'Grand Camarade', 'Père du Cameroun'],
    "answer_index": 0,
  },
  {
    "id": 17,
    "question":
        "En quelle année Ruben Um Nyobé a-t-il adressé une pétition à l’ONU pour l’indépendance du Cameroun ?",
    "options": ['1945', '1948', '1952', '1954'],
    "answer_index": 2,
  },
  {
    "id": 18,
    "question":
        "Où exactement Ruben Um Nyobé a-t-il été assassiné par l'armée française ?",
    "options": ['Boumyebel', 'Mbouda', 'Kribi', 'Dschang'],
    "answer_index": 0,
  },
  {
    "id": 19,
    "question":
        "Pour quel grand média Alain Foka est-il principalement connu ?",
    "options": ['BBC Afrique', 'TV5 Monde', 'RFI', 'France 24'],
    "answer_index": 2,
  },
  {
    "id": 20,
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
