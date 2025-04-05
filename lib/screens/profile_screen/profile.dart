import 'package:familyquiz/pages/login_page.dart';
import 'package:familyquiz/welcome/fancy_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void signout() async {
    try {
      await Supabase.instance.client.auth.signOut();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Déconnexion réussi!")));

      // Rediriger vers l'écran de connexion (ou tout autre écran)
      Get.off(LoginPage());
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Erreur lors de la déconnexion : $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6FF),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 223, 132, 250),
              Color.fromARGB(255, 74, 3, 95),
            ],
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 240,
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      child: Icon(
                        Icons.person,
                        size: 130,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "UserName",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              FancyButton(
                text: "Modifier",
                onTap: () {},
                gradient: const LinearGradient(
                  colors: [Color(0xFF9C27B0), Color(0xFFE040FB)],
                ),
              ),
              const SizedBox(height: 20),
              FancyButton(
                text: "Statistique",
                onTap: () {},
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A1B9A), Color(0xFFAB47BC)],
                ),
              ),
              const SizedBox(height: 20),
              FancyButton(
                text: "Deconexion",
                onTap: () {
                  signout();
                },
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A1B9A), Color(0xFFAB47BC)],
                ),
              ),
              const SizedBox(height: 20),
              FancyButton(
                text: "Suprimer compte",
                onTap: () {},
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A1B9A), Color(0xFFAB47BC)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
