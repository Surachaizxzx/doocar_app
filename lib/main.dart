import 'package:flutter/material.dart';

import 'screen/login.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 230, 230, 230),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      title: "Login App",
      home: const LoginApp(),
    ));
