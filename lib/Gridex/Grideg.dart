import 'package:flutter/material.dart';

class Grideg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
      padding: const EdgeInsets.all(20.0),
        itemCount: 15,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
    crossAxisSpacing: 15,
    mainAxisSpacing: 15,
    ),
        itemBuilder: (context,index){
        return Container(
        decoration: BoxDecoration(
        image: DecorationImage,

      ),

    );
  }
}
