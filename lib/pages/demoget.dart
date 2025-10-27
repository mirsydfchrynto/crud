import 'package:flutter/material.dart';

class Demoget extends StatelessWidget {
  const Demoget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DEMO GET")),
        body: Center(
          child: Column(
            children: [
              Text("tidak ada data"),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {},
              child: Text("get data")),
            ],
          ),
        ),
    );
  }
}