import 'package:custom_otp_textfield/custom_otp_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  final String email;
  const ForgotPassword(this.email, {super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  TextEditingController textEditingController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Code Verification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text("We have sent a 5 digit code to"),
                  Text(widget.email),
                ],
              )),
            SizedBox(height: 60,),
            CustomOTPTextField(
              deviceWidth: MediaQuery.of(context).size.width,
              textEditingController: textEditingController,
              boxSize: 40,
              inputBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey,width: 1),
              ),
              cursorColor: Colors.black,
              otpLength: 5,
              textStyle: TextStyle(color: const Color.fromARGB(255, 107, 66, 66),fontSize: 15,fontWeight: FontWeight.normal),
              spaceBetweenTextFields: 6,
              cursorHeight: 25,
            ),

            SizedBox(height: 20,),

            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                alignment: Alignment.center,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Did not receive code?"),
                    SizedBox(width: 5,),
                    Text("Resend", style: TextStyle(color: Colors.green),),
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 50,),
            
            GestureDetector(
              onTap: (){
                print(textEditingController.text);
              },
              child: Container(
                alignment: Alignment.center,
                width: 100,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 2, 82, 4)
                ),
                child: const Text("VERIFY", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),),
              ),
            ),

            // GestureDetector(
            //   onTap: (){
            //     Navigator.pop(context);
            //   },
            //   child: Container(
            //     alignment: Alignment.center,
            //     width: 100,
            //     padding: const EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(5),
            //       color: const Color.fromARGB(255, 2, 82, 4)
            //     ),
            //     child: const Text("CANCEL", style: TextStyle(
            //       color: Colors.white,
            //       fontWeight: FontWeight.w500
            //     ),),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}