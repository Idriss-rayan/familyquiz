import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class StoreScore extends StatefulWidget {
  const StoreScore({super.key});

  @override
  _StoreScoreState createState() => _StoreScoreState();
}

class _StoreScoreState extends State<StoreScore> {
  final supabase = Supabase.instance.client;
  int? userScore;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchUserScore();
  }

  Future<void> _fetchUserScore() async {
    try {
      // Récupérer l'utilisateur connecté
      final user = supabase.auth.currentUser;
      if (user == null) {
        setState(() => isLoading = false);
        return;
      }

      // Récupérer le dernier score de l'utilisateur
      final response = await supabase
          .from('scores')
          .select('score')
          .eq('user_id', user.id)
          .order('created_at', ascending: false)
          .limit(1)
          .single();

      if (response != null) {
        setState(() {
          userScore = response['score'];
        });
      }
    } catch (error) {
      print('Erreur lors de la récupération du score : $error');
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Votre Score')),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : userScore != null
                ? Text(
                    'Votre dernier score : $userScore',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  )
                : const Text('Aucun score trouvé.',
                    style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
