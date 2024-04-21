import 'package:flutter/material.dart';
import 'package:radar/pages/forgot_password.dart';

class LoginHandlers {
  // sign in handlers
  void login(Map<String, String> formData) {
    print(formData);
  }

  void loginWithGoogle() {
    print("login with google");
  }

  void loginWithFacebook() {
    print("login with facebook");
  }

  void forgotPassword(BuildContext context, String email) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(email)));
  }
}