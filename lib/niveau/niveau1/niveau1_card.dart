import 'package:flutter/material.dart';

class Niveau1Card extends StatelessWidget {
  const Niveau1Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 500,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.purple),
          color: Colors.purple,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 111, 4, 130),
              blurRadius: 7,
              offset: Offset(3, 3),
            ),
          ],
        ),
      ),
    );
  }
}
