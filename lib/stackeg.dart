import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: StackEg(),));
}

class StackEg extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Eg"),),
      body: Stack(
        children: [
         Container(
           height: 200,
           width : 200,
           color: Colors.deepOrangeAccent,
         ),
          Positioned(
            left: 70,
            top: 20,
            child: Container(
              height: 150,
              width : 150,
              color: Colors.greenAccent,
            ),
          ),
          Positioned(
            left: 30,
            right: 30,
            child: Container(
              height: 100,
              width : 100,
              color: Colors.blueAccent,
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            child: Container(
              height: 50,
              width : 50,
              color: Colors.yellowAccent,
            ),
          )
        ],
      ),
    );
  }
}
