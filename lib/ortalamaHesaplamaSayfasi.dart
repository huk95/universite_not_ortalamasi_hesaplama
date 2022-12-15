import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ortalamHesaplamaSayfasi extends StatefulWidget {
  const ortalamHesaplamaSayfasi({super.key});

  @override
  State<ortalamHesaplamaSayfasi> createState() =>
      _ortalamHesaplamaSayfasiState();
}

class _ortalamHesaplamaSayfasiState extends State<ortalamHesaplamaSayfasi> {
  var vizenot = 0;
  var finalnot = 0;
  var ort = 0;
  var tf1 = TextEditingController();
  var tf2 = TextEditingController();
  var durum = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ortalama Hesaplama"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextField(
                controller: tf1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  label: Text(
                    "Vize Sınavınızı Giriniz",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: TextField(
                controller: tf2,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  label: Text(
                    "Final Sınavınızı Giriniz",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                child: Text("Hesapla"),
                onPressed: () {
                  vizenot = int.parse(tf1.text);
                  finalnot = int.parse(tf2.text);
                  ort = (vizenot * 4 ~/ 10) + (finalnot * 6 ~/ 10);
                  if(ort >= 60){
                    setState(() {
                      durum = "Geçtiniz";
                      
                    });
                  }
                  else{
                    setState(() {
                      durum = "Kaldınız";
                    });
                  }
                },
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 20),
              child: Text(
                "Ortalama : $ort, $durum",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
