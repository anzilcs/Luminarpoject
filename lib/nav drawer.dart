import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Navdrawer(),));
}

class Navdrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("My Profile"),
      ),
      drawer: Drawer(       // enddrawer - right side
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(      //main profile photo
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1470790376778-a9fbc86d70e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=404&q=80"),
                ),
              ),
              accountName: Text("My Name"),
              accountEmail: Text("myname123@gmail.com"),
            currentAccountPicture: CircleAvatar(        //background image
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
            ),
              otherAccountsPictures: [            //other accounts photos
                CircleAvatar(
                  backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20191004/ourmid/pngtree-person-icon-png-image_1788612.jpg"),),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20191004/ourmid/pngtree-person-icon-png-image_1788612.jpg"),
                ),
              ],
            ),
            ListTile(                         //icons
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Info"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
          ],
        ),
      ),
    );
  }
}
