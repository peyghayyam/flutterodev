import 'package:flutter/material.dart';

void main() => runApp(MedicineReminder());

class MedicineReminder extends StatelessWidget {
  const MedicineReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Today's Medicine"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(50, 20, 50, 20),/// SAG SOL UST ALTTAN KONUMLANDIRMA

          

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),///kenar yumusatma
                    color: Colors.amber),


                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(  ///sadece sol taraf yumusatma
                              bottomLeft: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                          color: Colors.purple),

                      height: 120,
                      width: 180,
                      child: Icon(Icons.add_card_sharp),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 30.0),///yazı ve ikon boslugu için yeni conteiner ile padding degerine soldan deger verme
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Vitamin C"),
                            Text(" * 2 Capsule"),
                            Text(" * 3 times in a day"),
                          ],
                        ),
                      ),
                    ),
                    Text("7.30 AM"),
                    Spacer()
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.amber),

                /// color: Colors.amber,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          color: Colors.green),
                      padding: EdgeInsets.all(20),

                      /// color: Colors.green,
                      height: 120,
                      width: 180,
                      child: Icon(Icons.accessibility),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Aferin"),
                            Text(" * 1 Capsule"),
                            Text(" * 1 times in a day"),
                          ],
                        ),
                      ),
                    ),
                    Text("8.30 AM"),
                    Spacer()
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.amber),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0)),
                          color: Colors.red),

                      height: 120,
                      width: 180,
                      child: Icon(Icons.accessible_forward_rounded),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sudofed"),
                            Text(" * 2 Capsule"),
                            Text(" * 3 times in a day"),
                          ],
                        ),
                      ),
                    ),
                    Text("17.30 AM"),
                    Spacer()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
