import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_images.dart';
import 'package:shop_now_mobile/const/app_page_names.dart';
import 'package:shop_now_mobile/controllers/sign_up_screen_controller.dart';
import 'package:shop_now_mobile/utils/dialogs.dart';
import '../const/app_colors.dart';
import '../screens/login_screen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';

  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        global: false,
        init: SignUpScreenController(),
        builder: (controller) => Scaffold(
                body: Container(
              width: Helper.getScreenWidth(context),
              height: Helper.getScreenHeight(context),
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
                        horizontal: 40, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(AppAssetImages.shopNowLogoPNG),
                        Text(
                          'Add your details to sign up',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                color: AppColors.primaryMaterialColor.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        AppGaps.hGap10,
                        CustomTextInput(
                          labelText: 'Name',
                          hintText: "John Doe",
                          prefixIcon: SvgPicture.asset(
                              AppAssetImages.profileSVGLogoLine),
                        ),
                        AppGaps.hGap20,
                        CustomTextInput(
                          controller: controller.emailController,
                          labelText: 'Email',
                          hintText: "contact@gmail.com",
                          prefixIcon: SvgPicture.asset(
                              AppAssetImages.messageSVGLogoLine),
                        ),
                        AppGaps.hGap20,
                        CustomTextInput(
                          labelText: 'Phone Number',
                          hintText: '+44 1234 5678',
                          prefixIcon:
                              SvgPicture.asset(AppAssetImages.phoneSVGLogoLine),
                        ),
                        AppGaps.hGap20,
                        CustomTextInput(
                          labelText: 'Address',
                          hintText: "1234, Street, City, Country",
                          prefixIcon:
                              SvgPicture.asset(AppAssetImages.homeSVGLogoLine),
                        ),
                        AppGaps.hGap20,
                        CustomTextInput(
                          controller: controller.passwordController,
                          prefixIcon: SvgPicture.asset(
                              AppAssetImages.unlockSVGLogoLine),
                          labelText: 'Password',
                          hintText: "**********",
                          isPasswordTextField:
                              controller.toggleHidePassword.value,
                          suffixIcon: IconButton(
                            padding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(
                                horizontal: VisualDensity.minimumDensity,
                                vertical: VisualDensity.minimumDensity),
                            color: Colors.transparent,
                            onPressed: controller.onPasswordHideButtonTap,
                            icon: SvgPicture.asset(
                              AppAssetImages.hideSVGLogoLine,
                              color: controller.toggleHidePassword.value
                                  ? AppColors.bodyTextColor
                                  : AppColors.primaryMaterialColor,
                            ),
                          ),
                        ),
                        AppGaps.hGap20,
                        CustomTextInput(
                          controller: controller.confirmPasswordController,
                          prefixIcon: SvgPicture.asset(
                              AppAssetImages.unlockSVGLogoLine),
                          labelText: 'Confirm Password',
                          hintText: "**********",
                          isPasswordTextField:
                              controller.confirmToggleHidePassword.value,
                          suffixIcon: IconButton(
                            padding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            color: Colors.transparent,
                            onPressed:
                                controller.onConfirmPasswordHideButtonTap,
                            icon: SvgPicture.asset(
                              AppAssetImages.hideSVGLogoLine,
                              color: controller.confirmToggleHidePassword.value
                                  ? AppColors.bodyTextColor
                                  : AppColors.primaryMaterialColor,
                            ),
                          ),
                        ),
                        AppGaps.hGap40,
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              controller.signUp();

                              // Navigator.of(context)
                              //     .pushReplacementNamed(LoginScreen.routeName);
                            },
                            child: Text(
                              "Sign Up",
                              style: Helper.getTheme(context)
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        AppGaps.hGap20,
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppPageNames.loginScreen);
                            // Navigator.of(context)
                            //     .pushReplacementNamed(LoginScreen.routeName);
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an Account?"),
                              Text(
                                " Login",
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
            )));
  }
}
