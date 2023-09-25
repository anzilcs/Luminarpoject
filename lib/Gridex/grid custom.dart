import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridCustom(),));
}

class GridCustom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Custom"),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(
            List.generate(12, (index) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                          image: NetworkImage("https://images.unsplash.com/photo-1475459340673-25b00f9c9477?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
                      ),
                    ),
                  ),
                  Text("Item 1"),
                  Text("\$290"),
                ],
              ),
            ))
          ))
    );
  }
}
