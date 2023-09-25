
import 'package:flutter/material.dart';
void main(){
    runApp(MaterialApp(home: Gridview1()));
  }

class Gridview1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My GridView'),),
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 60),
      children: List.generate(
          15,
              (index) => const Card(
        color: Colors.yellow,
    child: Center(
    child: Icon(Icons.ac_unit_rounded),
    ),
    )
      ),
    ),
    );
  }
}
