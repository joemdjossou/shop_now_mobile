import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_images.dart';
import 'package:shop_now_mobile/screens/forgetPwScreen.dart';
import 'package:shop_now_mobile/screens/homeScreen.dart';

import '../const/app_colors.dart';
import '../screens/signUpScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Helper.getAssetName("splashIcon.png", "virtual"),
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(AppAssetImages.shopNowLogoPNG),
                  Text(
                    'Add your details to login',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.primaryMaterialColor.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  AppGaps.hGap40,
                  CustomTextInput(
                    labelText: 'Email',
                    hintText: "contact@gmail.com",
                    prefixIcon: SvgPicture.asset(
                      AppAssetImages.messageSVGLogoLine,
                    ),
                  ),
                  AppGaps.hGap20,
                  CustomTextInput(
                    prefixIcon:
                        SvgPicture.asset(AppAssetImages.unlockSVGLogoLine),
                    labelText: 'Password',
                    hintText: "**********",
                    isPasswordTextField: true,
                    suffixIcon: IconButton(
                      padding: EdgeInsets.zero,
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      color: Colors.transparent,
                      onPressed: () {},
                      icon: SvgPicture.asset(AppAssetImages.hideSVGLogoLine),
                    ),
                  ),
                  AppGaps.hGap40,
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context)
                        //     .pushReplacementNamed(HomeScreen.routeName);
                      },
                      child: Text(
                        "Login",
                        style: Helper.getTheme(context).titleMedium?.copyWith(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  AppGaps.hGap20,
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ForgetPwScreen.routeName);
                    },
                    child: Text(
                      "Forget your password?",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  AppGaps.hGap40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          endIndent: 8,
                        ),
                      ),
                      Text(
                        'Or Login With',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.bodyTextColor,
                            ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          indent: 8,
                        ),
                      ),
                    ],
                  ),
                  AppGaps.hGap20,
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.yellowLightColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAssetImages.googleLogoSVG),
                          AppGaps.wGap30,
                          Text(
                            "Login with Google",
                            style:
                                Helper.getTheme(context).titleMedium?.copyWith(
                                      color: AppColors.darkColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppGaps.hGap20,
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.purpleLightColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAssetImages.appleLogoSVG),
                          AppGaps.wGap30,
                          Text(
                            "Login with Apple",
                            style:
                                Helper.getTheme(context).titleMedium?.copyWith(
                                      color: AppColors.darkColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppGaps.hGap20,
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.blueSkyLightColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppAssetImages.facebookLogoSVG,
                            height: 32,
                            width: 32,
                          ),
                          AppGaps.wGap30,
                          Text(
                            "Login with Facebook",
                            style:
                                Helper.getTheme(context).titleMedium?.copyWith(
                                      color: AppColors.darkColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppGaps.hGap40,
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(SignUpScreen.routeName);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account?"),
                        SizedBox(width: 2),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: AppColors.orangeColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
