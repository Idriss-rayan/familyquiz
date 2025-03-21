import 'package:familyquiz/documentation/doc.dart';
import 'package:familyquiz/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // Listen to auth state changes
      stream: Supabase.instance.client.auth.onAuthStateChange,

      // Build apropriate page based on auth state
      builder: (context, snapshot) {
        // loading ...
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        // check if valid session currently
        final session = snapshot.hasData ? snapshot.data!.session : null;

        if (session != null) {
          return Doc();
        } else {
          return LoginPage();
        }
      },
    );
  }
}
