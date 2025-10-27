import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage")),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, 'demo');
              }, child: Text("contoh GET = READ")
              )
            ],
          ),
        ),
    );
  }
}