import 'package:flutter/material.dart';

class CongratPage extends StatelessWidget {
  final String imagePath;
  final String message;
  final VoidCallback onPressed;
  const CongratPage(
      {super.key,
      required this.imagePath,
      required this.message,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
      backgroundColor:
          const Color.fromARGB(255, 245, 241, 248).withValues(alpha: 0.75),
      child: SizedBox(
        width: 700,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 200,
              width: 200,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              message,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: onPressed,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: const Text(
                  "OK",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
