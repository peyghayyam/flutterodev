import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(Telefonlar());
}

class Telefonlar extends StatefulWidget {
  const Telefonlar({super.key});

  @override
  State<Telefonlar> createState() => _TelefonlarState();
}

class _TelefonlarState extends State<Telefonlar> {
  int textYil = 0;
  double textSure = 0;

  int secim =0 ;
  Tel samsung = Tel("Samsung", "S22", 2022, 3700, 25);
  Tel infinix = Tel("İnfinix", "Note 30", 2023, 5000, 45);
  Tel huawei = Tel("Huawei", "P10 lite", 2017, 300, 18);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("MARKA:"),
                Text("MODEL:"),
                Text("ÇIKIŞ YIL"),
                Text("PİL KAPASİTE:"),
                Text("WATT:"),
                Text("SEÇİM"),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text("Samsung"),
              Text("S24"),
              Text("2022"),
              Text("3700"),
              Text("25W "),
              Radio(value: 1, groupValue: secim, onChanged: (value) {
                setState(() {
                  textSure =  samsung.SarjSure();
                  textYil = samsung.CikisYil(2024);
                  secim = value!;
                });
              },)
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text("İnfinix"),
              Text("Note 30"),
              Text("2017"),
              Text("5000"),
              Text("45"),
              Radio(value: 2, groupValue: secim, onChanged: (value) {
                setState(() {
                  textSure =  infinix.SarjSure();
                  textYil = infinix.CikisYil(2024);
                  secim = value!;
                });
              },)
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text("Huawei"),
              Text("p10 lite"),
              Text("2017"),
              Text("3000"),
              Text("18"),
              Radio(value: 3, groupValue: secim, onChanged: (value) {
                setState(() {
                  textSure =  huawei.SarjSure();
                  textYil = huawei.CikisYil(2024);
                  secim = value!;
                });
              },)
            ],),
            Text("$textYil yıl önce çıktı"),
            Text("Şarj süresi:  $textSure saat"),
          ],
        ),
      ),
    );
  }
}

class Tel{
  String? marka;
  String? model;
  int? cikisYil;
  int? pilKapasite;
  int? akim;
  Tel(String marka,String model, int cikisYil, int pilKapasite, int akim){
    this.marka = marka;
    this.model= model;
    this.cikisYil = cikisYil;
    this.pilKapasite = pilKapasite;
    this.akim = akim;

  }

  CikisYil(int yil){
    int sonuc = yil- this.cikisYil!;
    return sonuc;
  }

  SarjSure(){
    double deger = 1.5;
    double sonuc = (this.pilKapasite! * deger)/ this.akim!;
    double sonuc1 = sonuc/60;
    return sonuc1;
  }


}