import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project2/home.dart';
import 'package:project2/registration.dart';

class Login2 extends StatefulWidget {
  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  var formkey = GlobalKey<FormState>();
  bool nopasswordvisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage 2"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "Username"),
              validator: (username) {
                if (username!.isEmpty || !username.contains('@')) {
                  return 'field is empty/Invalid';
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              obscureText: nopasswordvisibility,
              validator: (password) {
                if (password!.isEmpty || password.length < 6) {
                  return 'field is empty / invalid length';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (nopasswordvisibility == true) {
                          nopasswordvisibility = false;
                        } else {
                          nopasswordvisibility = true;
                        }
                      });
                    },
                    icon: Icon(nopasswordvisibility == true
                        ? Icons.visibility_off_sharp
                        : Icons.visibility),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "password"),
            ),
            ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "Invalid Username or password",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM_LEFT,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: Text("Login")),
            TextButton(
                onPressed: () {}, child: Text("Not a user!!! Register Here"))
          ],
        ),
      ),
    );
  }
}
