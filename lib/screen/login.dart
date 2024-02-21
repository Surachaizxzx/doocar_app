import 'package:docar/screen/home_screen.dart';
import 'package:docar/screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  void click() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/1.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                    child: Image.asset("assets/images/3.png"),
                  ),
                  Container(
                    width: 325,
                    height: 400,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 233, 230, 230),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        const Text(
                          "เข้าสู่ระบบ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 260,
                          height: 60,
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
                              labelText: "บัญชีผู้ใช้",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const SizedBox(
                          width: 260,
                          height: 60,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(179, 0, 0, 0)),
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(179, 0, 0, 0)),
                              suffix: Icon(
                                FontAwesomeIcons.eyeSlash,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              labelText: "รหัสผ่าน",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "ยังไม่มีบัญชี ?",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 243, 2, 2),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            width: 250,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.black87,
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromARGB(255, 36, 36, 36),
                                  Color.fromARGB(255, 94, 97, 98),
                                ],
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const Homescreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Login.',
                                    style: GoogleFonts.lato(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
