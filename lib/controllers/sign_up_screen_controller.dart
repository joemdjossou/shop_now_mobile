import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_now_mobile/utils/dialogs.dart';

class SignUpScreenController extends GetxController {
  //text editing controllers
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  /// Toggle value of hide password
  RxBool toggleHidePassword = true.obs;
  RxBool confirmToggleHidePassword = true.obs;

  void onPasswordHideButtonTap() {
    toggleHidePassword.value = !toggleHidePassword.value;
    update();
  }

  void onConfirmPasswordHideButtonTap() {
    confirmToggleHidePassword.value = !confirmToggleHidePassword.value;
    update();
  }

  //sign up the user function
  void signUp() async {
    //show loading screen
    AppDialogs.showProcessingDialog(message: 'Loading please wait');

    //try to create a user
    try {
      //check if the password and confirm password is the same
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Get.back();
        AppDialogs.showSuccessDialog(
            messageText: 'Account created successfully');
        log('Account created successfully');
      } else {
        //pop the circle and show the error message
        Get.back();

        //show the error message about the password not being the same
        AppDialogs.showErrorDialog(messageText: 'Passwords do not match');
        update();
      }
    } on FirebaseAuthException catch (e) {
      //pop the circle and show the error message
      Get.back();
      log('Firebase catch error: ${e.code}');
      //show error message
      //show error to user
      AppDialogs.showErrorDialog(messageText: e.code);
      update();
    }
  }
}
