import 'package:flutter/material.dart';

void main() {
  runApp(Kahve());
}

class Kahve extends StatelessWidget {
  const Kahve({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: AlignmentDirectional.bottomCenter,
          width: double.infinity,
          height: double.infinity,
          color: Colors.brown,
          child: Align(///merkeze koymak için yaptım ama tam çalısmadı
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, ///resmi yuvarlak yapma
                    image: DecorationImage(
                      image: AssetImage('images/kahve.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text("Flutter Kahvecisi",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: "RestorationBucket._childrenMapKey")),///font indirilmesi gerek
                Text(
                  "BİR FİNCAN UZAĞINIZDA",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),/// yazıyla birlesik olmaması için dıs boslugu bıraktım
                  color: Colors.white,
                  height: 0.75,///Divider(color: Colors.white,height: 1.0, ) divider ile duz yatay cizgi olusturulabilir.
                  ///Uzunluğu belirtmek için divider yerine Container kullandım
                  width: 150,
                ),
                Container(
                  color: Colors.white,
                  width: 300,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.email,
                      ),
                      Spacer(),
                      Text("flutterkahvecisi@gmail.com" , style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0)),
                      Spacer()
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: 300,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.phone,
                      ),
                      Spacer(),
                      Text("+90 547 383 3838",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.0)),
                      Spacer()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
