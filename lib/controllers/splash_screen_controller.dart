import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shop_now_mobile/const/app_page_names.dart';

class SplashScreenController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    _startSplash();
  }

  void _startSplash() async {
    await Future.delayed(const Duration(seconds: 2)); // Wait for 2 seconds
    checkAuthState();
  }

  void checkAuthState() {
    _auth.authStateChanges().listen((User? user) {
      if (user != null) {
        Get.offNamed(AppPageNames.homeScreen);
      } else {
        Get.offNamed(AppPageNames.introScreen);
      }
    });
  }
}
