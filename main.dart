import 'package:flutter/material.dart';

void main() {
  runApp(Kutuphane());
}

class Kutuphane extends StatefulWidget {
  const Kutuphane({super.key});

  @override
  State<Kutuphane> createState() => _KutuphaneState();
}

class _KutuphaneState extends State<Kutuphane> {
  List secili = ["Suç ve ceza", "Karamazov kardesler", "Sefiller" , "  Klasikler..."];
  List k1 = ["Suç ve ceza", "Karamazov kardesler", "Sefiller", "  Klasikler..."];
  List k2 = ["İnsanlığımı Yitirirken", "Saklı Yapraklar", "Batan güneş", "  Japon klasikler..."];
  List k3 = ["Böyle bir sevmek", "Rubailer-hayyam", "835 satır", "  Şiir..."];
  List k4 = ["Devlet", "ütopya", "Nebi", "  Felsefe..."];
  int raf = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black54,
          appBar: AppBar(
              title: Center(child: Text("hayyam")),
              backgroundColor: Colors.brown),
          body:
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Yenile();
                            secili = k1;
                            raf =1;


                          }, child: Text("Klasikler") , style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),)),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Yenile();
                          secili = k2;
                          raf =2;
                        },
                        child: Text("Japon Klasikleri"), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey))),
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Yenile();
                          secili= k3;
                          raf =3;
                        },
                        child: Text("Şiir"), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent))),
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Yenile();
                          secili = k4;
                          raf =4;
                        },
                        child: Text("Felsefe"), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal))),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(secili[3], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0, backgroundColor: Colors.black, color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(secili[0], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(secili[1], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(secili[2], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0)),
                        ),
                        Text("Raf: $raf", style: TextStyle(backgroundColor: Colors.limeAccent),),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Image.asset("images/kitap.jpg", width: double.infinity,height: 400,),
                  )
                ],
              )


            ],
          ),
        ));
  }

  void Yenile() {
    setState(() {});
  }


}
