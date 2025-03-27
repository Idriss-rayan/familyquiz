import 'package:animate_do/animate_do.dart';
import 'package:familyquiz/auth/auth_service.dart';
import 'package:familyquiz/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // get auth service
  final authService = AuthService();
  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  // signUp button pressed
  void signUp() async {
    final email = _emailController.text;
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    // check that password match
    if (password != confirmPassword) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("password not match")));
      return;
    }

    //attempt signUp ...
    try {
      await authService.signUpWithEmailPassword(email, password);

      // pop this register pages
      Navigator.pop(context);
    }

    // catch any errors..
    catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("erreur: $e")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: FadeInUp(
                          duration: Duration(seconds: 1),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-1.png'))),
                          )),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: FadeInUp(
                          duration: Duration(milliseconds: 1200),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-2.png'))),
                          )),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: FadeInUp(
                          duration: Duration(milliseconds: 1300),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/clock.png'))),
                          )),
                    ),
                    Positioned(
                      child: FadeInUp(
                          duration: Duration(milliseconds: 1600),
                          child: Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Center(
                              child: Text(
                                "Inscription",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    FadeInUp(
                      duration: Duration(milliseconds: 1800),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromRGBO(143, 148, 251, 1)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(
                                              143, 148, 251, 1)))),
                              child: TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                    labelText: "Email or Phone number",
                                    labelStyle: TextStyle(
                                      color: Color.fromARGB(250, 142, 124, 247),
                                    ),
                                    border: InputBorder.none,
                                    //hintText: ,
                                    hintStyle:
                                        TextStyle(color: Colors.grey[700])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                controller: _passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          250, 142, 124, 247),
                                    ),
                                    border: InputBorder.none,
                                    //hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[700])),
                              ),
                            ),
                            Container(
                              //padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(143, 148, 251,
                                          1)), // Ajout de la ligne
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                controller: _confirmPasswordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: "Confirm Password",
                                    labelStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          250, 142, 124, 247),
                                    ),
                                    border: InputBorder.none,
                                    //hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[700])),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FadeInUp(
                      duration: Duration(milliseconds: 1900),
                      child: InkWell(
                        splashColor: const Color.fromARGB(255, 172, 172, 222),
                        onTap: signUp,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ])),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    FadeInUp(
                      duration: Duration(milliseconds: 2000),
                      child: InkWell(
                        onTap: () => Get.to(LoginPage()),
                        child: Text(
                          "Back to the Login Page",
                          style: TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
