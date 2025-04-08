import 'package:flutter/material.dart';

class Statistique extends StatelessWidget {
  const Statistique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListWheelScrollView(
        itemExtent: 250,
        physics: const FixedExtentScrollPhysics(),
        // Uncomment to enable a dialog on item selection
        // onSelectedItemChanged: (index) {
        //   showDialog(
        //     context: context,
        //     builder: (context) => AlertDialog(
        //       title: const Text("Confirmation"),
        //       content: const Text("Voulez-vous passer à l'étape suivante?"),
        //       actions: [
        //         TextButton(onPressed: () => Navigator.pop(context), child: const Text("Non")),
        //         TextButton(onPressed: () {/* Handle next step */}, child: const Text("Oui")),
        //       ],
        //     ),
        //   );
        // },
        children: const [
          Hero(
            tag: 'hero1',
            child: NewWidget(title: 'Ventes', value: '1500 €'),
          ),
          NewWidget(title: 'Utilisateurs', value: '250'),
          NewWidget(title: 'Conversions', value: '35%'),
          NewWidget(title: 'Sessions', value: '1020'),
          NewWidget(title: 'Taux de rebond', value: '22%'),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String title;
  final String value;

  const NewWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 500,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              const SizedBox(height: 10),
              Text(value,
                  style: const TextStyle(fontSize: 18, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
