import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Docar Home"),
        toolbarTextStyle: const TextStyle(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black26,
      ),
    );
  }
}
