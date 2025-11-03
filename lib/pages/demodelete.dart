import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Demodelete extends StatefulWidget {
  const Demodelete({super.key});

  @override
  State<Demodelete> createState() => _DemodeleteState();
}

class _DemodeleteState extends State<Demodelete> {
     var hasil = "";
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("DEMO DELETE")),
        body: Center(child: Column(children: [
          ElevatedButton(onPressed: ()async{
            var respon = await http.delete(
              Uri.parse("https://jsonplaceholder.typicode.com/users/1")
            );
            print("Status code: ${respon.statusCode}");
            print("Body: ${respon.body}");

            if (respon.statusCode == 200){
              setState(() {
                hasil = "Data berhasil dihapus";
                print(hasil);
              });
            } else {
              setState(() {
                hasil = "Gagal menghapus data";
                print(hasil);
              });
            }
            
          }, child: Text("DELETE DATA")),
          SizedBox(height: 20),
          
        ],),),
        );
    }
}