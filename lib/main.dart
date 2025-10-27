import 'package:crud/pages/demoget.dart';
import 'package:crud/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Crud());
}

class Crud extends StatelessWidget {
  const Crud({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => Homepage(),
        'demo': (context) => Demoget()
      },
    );
  }
}