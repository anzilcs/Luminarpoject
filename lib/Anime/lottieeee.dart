import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LotAnime(),));
}

class LotAnime extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie"),),

      body: ListView(
        children: [
          Lottie.asset("assets/annimation/spidy.json"),
          Lottie.network("https://lottie.host/e4563f6f-6c2f-40d5-b198-4a1a3187956a/YPbIfbkMgQ.json"),
        ],
      ),
    );
  }
}
