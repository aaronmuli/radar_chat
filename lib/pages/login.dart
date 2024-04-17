import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:radar/pages/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}



class _LoginState extends State<Login> {

  double spacing = 10.0;
  Color errorInputColor = const Color.fromARGB(255, 133, 50, 44);
  Color errorInputTextColor = const Color.fromARGB(255, 207, 15, 1);
  
  Color inputColor = Colors.grey.shade100;
  Color inputTextColor = Colors.black;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // lock icon
            const Icon(Icons.lock, size: 80,),
            const Text(
              "RadarChat",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            const Text("Welcome, sign in to get started."),
            //email/phone input field
            TextFormField(
              autocorrect: false,
              controller: emailController,
              cursorErrorColor: errorInputColor,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.mail_outline, color: Colors.black45,),
                errorStyle: TextStyle(
                  color: errorInputTextColor,
                  backgroundColor: errorInputColor,
                ),
                labelStyle: TextStyle(
                  color: Colors.grey[800],
                ),
                labelText: "Email",
                filled: true,
                fillColor: inputColor,
                contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 0.5
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 1, 1)
                  )
                ),
              ),
            ),
            //password input field
            TextFormField(
              obscureText: true,
              autocorrect: false,
              controller: passwordController,
              cursorErrorColor: errorInputColor,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline, color: Colors.black45,),
                errorStyle: TextStyle(
                  color: errorInputTextColor,
                  backgroundColor: errorInputColor,
                ),
                labelStyle: TextStyle(
                  color: Colors.grey[800],
                ),
                labelText: "Password",
                filled: true,
                fillColor: inputColor,
                contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 0.5
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 1, 1)
                  )
                ),
              ),
            ),

            //forgot password
            GestureDetector(
              onTap: (){
                print("forgot password");
              },
              child: Container(
                alignment: AlignmentDirectional.centerEnd,
                child: const Text("Forgot password?", style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),

            GestureDetector(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                width: 300,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 2, 82, 4)
                ),
                child: const Text("SIGN IN", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black38
                  ),
                ),
                SizedBox(width: 5,),
                Text("or sign in with"),
                SizedBox(width: 5,),
                Container(
                  width: 80,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black38
                  ),
                ),
              ],
            ),
            
            //login with google
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5)
                      ),
                      alignment: Alignment.center,
                      child: Image.asset("lib/assets/google.png", scale: 12,),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5)
                      ),
                      alignment: Alignment.center,
                      child: Image.asset("lib/assets/facebook.png", scale: 12,),
                  ),
                ),
              ],
            ),
           
            //don't have an account register
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Register()));
                // Navigator.pop(context, MaterialPageRoute(builder: (context) => const Login()));
              },
              child: Container(
                alignment: Alignment.center,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 5,),
                    Text("Sign Up", style: TextStyle(color: Colors.green),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}