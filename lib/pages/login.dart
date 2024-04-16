import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // lock icon
            Icon(Icons.lock, size: 80,),
            Text("LOGIN"),
            //email/phone input field
            TextFormField(
              decoration: InputDecoration(
                labelText: "email/phone",
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
            //password input field
            TextFormField(
              decoration: InputDecoration(
                labelText: "password",
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
            //forgot password
            Container(
              child: Text("Forgot password"),
            ),
            //login with google
            Container(
              child: Row(
                children: [
                  Icon(Icons.mail),
                  Text("Login with google"),
                ],
              ),
            ),
            //login
            ElevatedButton(onPressed: (){}, child: Text("Login")),
            //don't have an account register
            Container(
              child: Row(
                children: [
                  Text("Don't have an account?"),
                  Text("register"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}