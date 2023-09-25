import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Listview2(),
    ));
}

class Listview2 extends StatelessWidget {

var name = ["food1","food2","food3","food4","food5"];

var image = ["assets/image/green.jpg",
  "assets/icons/doggy.png",
  "assets/image/green.jpg",
  "assets/icons/doggy.png",
  "assets/image/green.jpg"];

var price=[230,450,570,360,350];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Listview 2"),
      actions: [
        Icon(Icons.camera_alt),
        SizedBox(width: 30,),
        Icon(Icons.search),
        SizedBox(width: 20,),
        PopupMenuButton(itemBuilder:(context){
          return[
            const PopupMenuItem(child: Text("Settings")),
            const PopupMenuItem(child: Text("Profile")),
            const PopupMenuItem(child: Text("Broadcast")),
            const PopupMenuItem(child: Text("Help")),
          ];
        })
        ]
      ),
      body: ListView(
        children: List.generate(5, (index) => Card(
    child: ListTile(
    title: Text(name[index]),
    subtitle: Text("\$ ${price[index]}"),
    leading: CircleAvatar(
      backgroundImage: AssetImage(image[index]),
    ),
      trailing: Wrap(
        direction: Axis.vertical,
      children:[
        Text("12.30"),
      SizedBox(width: 15,),
      CircleAvatar(
        minRadius: 2,
        maxRadius: 8,
        backgroundColor: Colors.teal,
          child: Text("2"),)
        ]),
      ),
    ),
    )
      ),
    );
    
  }
}
