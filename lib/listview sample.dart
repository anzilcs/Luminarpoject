import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: ListView1()));
}

class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("SNEAKERS",
          style: GoogleFonts.aldrich(fontSize:20, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "Shop here",
            style: GoogleFonts.saira(fontSize: 50, color: Colors.black),
          )),
          const Card(
            color: Colors.greenAccent,
            child: ListTile(
              title: Text("Converse"),
              subtitle: Text("\$ 780"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG"),
              ),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          const Card(
            color: Colors.blueAccent,
            child: ListTile(
              title: Text("NIKE"),
              subtitle: Text("\$ 900"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/21cdb835-17f7-4429-a28c-c4db7861a8b2/blazer-mid-77-big-kids-shoes-QLHvx3.png"),
              ),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          const Card(
            color: Colors.orangeAccent,
            child: ListTile(
              title: Text("NEW BALANCE"),
              subtitle: Text("\$ 800"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://assets-global.website-files.com/64a86d230c3e07ee19a9191b/64a8cc7cc2052d300e4ce5df_63299c219e197652b5d8c4a9_cover.jpeg"),
              ),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}
