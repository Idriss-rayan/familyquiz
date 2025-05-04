import 'package:familyquiz/pages/login_page.dart';
import 'package:familyquiz/welcome/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:familyquiz/documentation/histoire.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Doc extends StatefulWidget {
  Doc({super.key});

  @override
  State<Doc> createState() => _DocState();
}

class _DocState extends State<Doc> {
  //final PageController _pagecontroller = PageController();
  // logout
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
        body: PageView(
      children: _buildPages(),
      physics: BouncingScrollPhysics(),
    ));
  }

  List<Widget> _buildPages() => [
        _buildImagePage("assets/icons/test1.png", Color(0xFFF2AF04),
            "Glissez de droite à gauche pour defiler"),
        _buildImagePage(
            "assets/icons/test2.png", Color(0xFF04F177), "Commençons"),
        _buildTextPage("assets/icons/Ahijo.png", Name.Ahmadou, "HAMADOU AHIDJO",
            [Colors.white, Colors.grey]),
        _buildTextPage("assets/icons/biya.png", Name.Biya, "PAUL BIYA",
            [Colors.white, Colors.blue]),
        _buildTextPage("assets/icons/ernest.png", Name.ernest, "ERNEST OUANDIÉ",
            [Color(0xFFD29301), Color(0xFF685201)]),
        _buildTextPage("assets/icons/milla.png", Name.milla, "ROGER MILLA", [
          Color.fromARGB(255, 210, 248, 219),
          Color.fromARGB(255, 36, 183, 3),
          Colors.green
        ]),
        _buildTextPage("assets/icons/foka.png", Name.foka, "ALAIN FOKA", [
          Color.fromARGB(255, 243, 39, 103),
          Color.fromARGB(255, 255, 0, 0),
        ]),
        _buildTextPage("assets/icons/beti.png", Name.beti, "MONGO BETI", [
          Color.fromARGB(255, 241, 185, 4),
          Colors.white,
        ]),
        _buildTextPage(
            "assets/icons/moumie.png", Name.moumie, "FÉLIX-ROLAND MOUMIÉ", [
          Color.fromARGB(255, 52, 52, 51),
          Colors.white,
        ]),
        _buildTextPage("assets/icons/um.png", Name.um, "RUBEN UM NYOBÉ", [
          Color.fromARGB(255, 18, 92, 2),
          const Color.fromARGB(255, 154, 4, 4),
          const Color.fromARGB(255, 229, 244, 12),
        ]),
        _buttonRacourcci(),
      ];

  Widget _buildImagePage(String assetPath, Color bgColor, String str) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      color: bgColor,
      child: Column(
        children: [
          Center(
            child: Image.asset(assetPath, height: 300, width: 300),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: Colors.black),
              color: Colors.white70,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                str,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextPage(
      String imagePath, String text, String name, List<Color> gradientColors) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 182, 224, 241),
      //   elevation: 30,
      //   shadowColor: Colors.black,
      //   leading: IconButton(
      //     onPressed: signout,
      //     icon: Icon(
      //       Icons.logout,
      //       color: Colors.blueGrey,
      //     ),
      //   ),
      //   actions: [
      //     // Icône profil à droite
      //     IconButton(
      //       onPressed: () {},
      //       icon: Padding(
      //         padding: const EdgeInsets.only(right: 15),
      //         child: Icon(
      //           Icons.person,
      //           color: Colors.blueGrey,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              _buildImageContainer(imagePath),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black),
                ),
                child: Text(name,
                    style: GoogleFonts.comicNeue(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 40, left: 18, right: 18, bottom: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    text,
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      height: 220,
      width: 300,
    );
  }
}

Widget _buttonRacourcci() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 5, 203, 170),
          Color.fromARGB(255, 4, 247, 186),
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      ),
    ),
    child: Center(
      child: InkWell(
        splashColor: Colors.red,
        onTap: () => Get.offAll(
          StartScreen(),
          transition: Transition.rightToLeft,
          duration: Duration(milliseconds: 1000),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Text(
            "Menu principal",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ),
  );
}
