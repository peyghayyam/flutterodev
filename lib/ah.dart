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

            child: Container(
              alignment: AlignmentDirectional.center,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle, ///resmi yuvarlak yapma
                image: DecorationImage(
                  image: AssetImage('images/kahve.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            )
        ),
      ),
    );
  }
}
