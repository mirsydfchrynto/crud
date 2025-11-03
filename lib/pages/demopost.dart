  import 'package:flutter/material.dart';
  import 'package:http/http.dart' as http;

  class Demopost extends StatefulWidget {
    const Demopost({super.key});

    @override
    State<Demopost> createState() => _DemopostState();
  }

  class _DemopostState extends State<Demopost> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("DEMO POST")),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              decoration: InputDecoration(border: 
              OutlineInputBorder(),
              label: Text("Nama")
              ),
              ),
              SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(border: 
              OutlineInputBorder(),
              label: Text("Email")
              ),
              ),
              SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(border: 
              OutlineInputBorder(),
              label: Text("Telepon")
              ),
              ),
              SizedBox(height: 20),
            ElevatedButton(onPressed: ()async{
              var myrespon =  await http.post(
                Uri.parse("https://jsonplaceholder.typicode.com/users"),
                body: {
                  "nama": "Irsyad",
                  "email": "mirsyadf@gmial.com",
                  "telepon": "082233445566",
                }
              );
              print(myrespon.statusCode);
              print(myrespon.body);
            }, child: Text( "kirim data")),
          ], 

        ),
      );
    }
  }