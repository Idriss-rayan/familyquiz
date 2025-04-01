import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String name;
  const Buttons({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 240,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 50, 2, 65),
            const Color.fromARGB(255, 151, 3, 231)
          ],
        ),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.comicNeue(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
