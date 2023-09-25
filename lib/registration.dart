import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project2/home.dart';

void main() {
  runApp(MaterialApp(home: RegPage()));
}

class RegPage extends StatefulWidget {
  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.people),
                    hintText: "username",
                    labelText: "username"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Email",
                    labelText: "Email"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.call),
                    hintText: "Phone",
                    labelText: "Phone"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    hintText: "Password",
                    labelText: "Password"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    hintText: "Confirm Password",
                    labelText: "Confirm Password"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Home()));
                },
                child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}
