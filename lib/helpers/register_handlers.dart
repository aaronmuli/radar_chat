import 'package:flutter/material.dart';

class RegisterHandlers {

  // sign up handlers
  void register(Map<String, String> formData) {
    print(formData);
  }

  void registerWithGoogle() {
    print("register with google");
  }

  void registerWithFacebook() {
    print("register with facebook");
  }
}