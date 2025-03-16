import 'package:familyquiz/documentation/doc.dart';
import 'package:familyquiz/screens/quiz/quiz_screen.dart';
import 'package:familyquiz/screens/score/score_screen.dart';
import 'package:familyquiz/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'African Quiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Doc(),
    );
  }
}
