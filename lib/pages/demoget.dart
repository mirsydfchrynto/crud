import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Demoget extends StatefulWidget {
  const Demoget({super.key});

  @override
  State<Demoget> createState() => _DemogetState();
}

class _DemogetState extends State<Demoget> {
  String? nama;
  String? email;
  String? telepon;
  Map<String, dynamic>? alamat;
  String? city;
  String? street;
  String? suite;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DEMO GET")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                var respon = await http.get(
                    Uri.parse("https://jsonplaceholder.typicode.com/users/1"));
                var data = jsonDecode(respon.body);

                setState(() {
                  nama = data["name"];
                  email = data["email"];
                  telepon = data["phone"];
                  alamat= data ["address"];
                  city = alamat? ["city"];
                  street = alamat?["street"];
                  suite = alamat?["suite"];
                });
              },
              child: Text("Get Data"),
            ),
            SizedBox(height: 20),
            if (nama == null || email == null || telepon == null || alamat == null)
              Text("Belum ada data yang diambil")
            else ...[
              Text("Nama: $nama"),
              Text("Email: $email"),
              Text("Telepon: $telepon"),
              Text("Alamat: $city, $suite, $street"),
            ]
          ],
        ),
      ),  
    );
  }
}
