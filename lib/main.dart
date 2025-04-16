import 'package:familyquiz/auth/auth_gate.dart';
import 'package:familyquiz/niveau/niveau1/liste_niveau.dart';
import 'package:familyquiz/niveau/niveau1/niveau1_card.dart';
import 'package:familyquiz/niveau/niveau1/score1.dart';
import 'package:familyquiz/quiz_set/level_quiz/level_card.dart';
import 'package:familyquiz/quiz_set/level_quiz/level_quiz.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // supabase setup
  await Supabase.initialize(
    url: 'https://dblajpxoczwawduvpmah.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRibGFqcHhvY3p3YXdkdXZwbWFoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDI0NjU3MTUsImV4cCI6MjA1ODA0MTcxNX0.Zf37CX2sKKoUbTks6iNkrTa0miOt5EvG2TLkjP1-XLU',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Africn Quiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: AuthGate(),
    );
  }
}
