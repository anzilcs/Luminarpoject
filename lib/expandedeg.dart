import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Expandedeg(),));
}

class Expandedeg extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded"),
      ),
      body: Column(
        children: [
          
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1691074750897-a0e1a431176f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1916&q=80"),
          ),
          Expanded(
          child: Image.network(
              "https://images.unsplash.com/photo-1691074750897-a0e1a431176f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1916&q=80"),
          ),
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1691074750897-a0e1a431176f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1916&q=80"),
          ),
        ],
      ),
    );
  }
}
