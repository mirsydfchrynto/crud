import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Demoput extends StatefulWidget {
  const Demoput({super.key});

  @override
  State<Demoput> createState() => _DemoputState();
}

class _DemoputState extends State<Demoput> {
    var hasil = "belum ada respon";
    
    TextEditingController nameI = TextEditingController();
    TextEditingController emailI = TextEditingController();
    TextEditingController phoneI = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("DEMO PUT")),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              controller: nameI,
              decoration: InputDecoration(border: 
              OutlineInputBorder(),
              label: Text("Nama")
              ),
              ),
              SizedBox(height: 20),
            TextField(
              controller: emailI,
              decoration: InputDecoration(border: 
              OutlineInputBorder(),
              label: Text("Email")
              ),
              ),
              SizedBox(height: 20),
            TextField(
              controller: phoneI,
              decoration: InputDecoration(border: 
              OutlineInputBorder(),
              label: Text("Telepon")
              ),
              ),
              SizedBox(height: 20),
            ElevatedButton(onPressed: ()async{
              var myrespon =  await http.put(
                Uri.parse("https://jsonplaceholder.typicode.com/users/1"),
                body: {
                  "nama": nameI.text,
                  "email": emailI.text,
                  "telepon": phoneI.text,
                }
              );
              if (myrespon.statusCode == 200){
                setState(() {
                  hasil = myrespon.body;
                });
              } else {
                setState(() {
                  hasil = "gagal dikirim";
                });
              }
              print(myrespon.statusCode);
              print(myrespon.body);
            },
            child: Text( "kirim data")),
            SizedBox(height: 20),
            Text(hasil)
          ], 

        ),
      );
    }
}