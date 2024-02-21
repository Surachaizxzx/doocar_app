import 'package:docar/screen/home_screen.dart';
import 'package:docar/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/my_button.dart';
import '../component/my_textformfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final emailControllor = TextEditingController();
  final nameControllor = TextEditingController();
  final passwordControllor = TextEditingController();
  final repasswordControllor = TextEditingController();
  signUpWithEmailAndPassword() {
    print('sign Up');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 253, 253, 253),
                  Color.fromARGB(255, 121, 115, 115)
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                const Spacer(),
                SizedBox(
                  height: 150,
                  child: Image.asset("assets/images/3.png"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to our Family Car",
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromARGB(237, 8, 8, 8),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\nTo get started please provide your information to create and account\n",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 31, 30, 30),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 100),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Color.fromARGB(179, 11, 11, 11),
                              fontStyle: FontStyle.normal,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromARGB(179, 4, 4, 4),
                            ),
                            suffix: Icon(
                              FontAwesomeIcons.person,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            labelText: "User name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Color.fromARGB(179, 11, 11, 11),
                              fontStyle: FontStyle.normal,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromARGB(179, 4, 4, 4),
                            ),
                            suffix: Icon(
                              FontAwesomeIcons.envelope,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Color.fromARGB(179, 11, 11, 11),
                              fontStyle: FontStyle.normal,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromARGB(179, 4, 4, 4),
                            ),
                            suffix: Icon(
                              FontAwesomeIcons.idBadge,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            labelText: "User Password ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Color.fromARGB(179, 11, 11, 11),
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            labelStyle: TextStyle(
                              color: Color.fromARGB(179, 4, 4, 4),
                              fontSize: 15,
                            ),
                            suffix: Icon(
                              FontAwesomeIcons.idCardClip,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            labelText: "Re-User password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Mybutton(onTap: signUpWithEmailAndPassword, hinText: "Sign Up"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have a member ?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginApp(),
                          ),
                        );
                      },
                      child: const Text("Sign In"),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
