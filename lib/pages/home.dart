import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //VARIABLE
  TextEditingController angka1 = new TextEditingController();
  TextEditingController angka2 = new TextEditingController();
  int hasil = 0;

  //FUNGSI
  tambah() {
    setState(() {
      hasil = int.parse(angka1.text) + int.parse(angka2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: angka1,
                decoration:
                    InputDecoration(labelText: "Masukkan Angka Pertama"),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: angka2,
                decoration: InputDecoration(labelText: "Masukkan Angka Kedua"),
              ),
              FlatButton(
                onPressed: () {
                  tambah();
                },
                child: Text(
                  "Tambah",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.brown,
              ),
              Text(hasil.toString(), style: TextStyle(fontSize: 30.0))
            ],
          ),
        ));
  }
}
