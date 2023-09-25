import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: Stag_Grid(),));
}
class Stag_Grid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("staggered GridView"),),
      body:SingleChildScrollView(
        child: StaggeredGrid.count(
            crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.lightGreenAccent,
                  child: const Center(
                      child: Icon(Icons.cabin)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.lightBlueAccent,
                  child: const Center(
                      child: Icon(Icons.add)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.orangeAccent,
                  child: const Center(
                      child: Icon(Icons.home)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.yellowAccent,
                  child: const Center(
                      child: Icon(Icons.arrow_forward)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.redAccent,
                  child: const Center(
                      child: Icon(Icons.label)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.tealAccent,
                  child: const Center(
                      child: Icon(Icons.key)),
                )),

          ],
        ),
      ) ,
    );

  }
}
