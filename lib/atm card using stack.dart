import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: StackEx(),));
}
class StackEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack ex"),
      ),
      body: Stack(
        children: [
             Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://images.unsplash.com/photo-1691090307452-b64800eaf2fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80"))
              ),
            ),


    Positioned(
                left: 50,
                top: 80,
                child: Row(
                  children: [
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.box,color: Colors.black,size:40),
                        SizedBox(width: 8,
                        ),

                        Transform.rotate(
                          angle:90 * pi / 180,
                        child: const FaIcon(
                          FontAwesomeIcons.wifi,color: Colors.black
                          ,size: 40,),
                        ),
                      ],
                    )
                  ],
                )),
          Positioned(
            ri
              child: Text("Fi")),
    ],

      ),
    );
  }
}
