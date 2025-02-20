import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shop_now_mobile/const/app_page_names.dart';
import 'package:shop_now_mobile/utils/dialogs.dart';

class LoginScreenController extends GetxController {
  //text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  late UserCredential userCredential;

  /// Toggle value of hide password
  RxBool toggleHidePassword = true.obs;

  void onPasswordHideButtonTap() {
    toggleHidePassword.value = !toggleHidePassword.value;
    update();
  }

  //sign in the user function
  void login() async {
    AppDialogs.showProcessingDialog(message: 'Loading please wait');

    //try to sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //pop the circle
      Get.offAllNamed(AppPageNames.homeScreen);
      update();
    } on FirebaseAuthException catch (e) {
      //pop the circle and show the error message
      Get.back();
      log('Firebase catch error: ${e.code}');
      update();
      //show error message
      //show error to user
      AppDialogs.showErrorDialog(messageText: e.code);
    }
  }

  void googleLogin() async {
    AppDialogs.showImageProcessingDialog();
    try {
      final GoogleSignInAccount? googleUser =
          // await GoogleSignIn(scopes: <String>["email"]).signIn();
          await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      Get.offAllNamed(AppPageNames.homeScreen);
      update();
    } on FirebaseAuthException catch (e) {
      //pop the circle and show the error message
      Get.back();
      log('Firebase catch error: ${e.code}');
      update();
      //show error message
      //show error to user
      AppDialogs.showErrorDialog(messageText: e.code);
    }
  }
}
