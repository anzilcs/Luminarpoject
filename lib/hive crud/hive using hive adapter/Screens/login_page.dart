import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project2/hive%20crud/hive%20using%20hive%20adapter/Screens/register_page.dart';

import '../models/user_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(MaterialApp(home: Login(),));

}

class Login extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HiveLogin"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: 'UserName',
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'PassWord'),
            ),
          ),
          ElevatedButton.getUser();
              },(
    onPressed: () async{c
    final users = await Hivedb.instance
              child: const Text("Login")),
          TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>RegisterHive()));
              },
              child: const Text("Not a User? Register Here!!!"))
        ],
      ),
    );
  }
}