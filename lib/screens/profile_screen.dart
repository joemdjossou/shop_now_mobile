import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_now_mobile/const/app_colors.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_text_styles.dart';
import 'package:shop_now_mobile/controllers/profile_screen_controller.dart';
import 'package:shop_now_mobile/utils/helper.dart';
import 'package:shop_now_mobile/widgets/custom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profileScreen";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProfileScreenController(),
        global: false,
        builder: (controller) {
          return Scaffold(
            body: Stack(
              children: [
                SafeArea(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: Helper.getScreenHeight(context),
                      width: Helper.getScreenWidth(context),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Profile",
                                  style: Helper.getTheme(context).headlineLarge,
                                ),
                                IconButton(
                                  onPressed: controller.signOut,
                                  icon: Icon(
                                    Icons.logout_outlined,
                                    color: AppColors.primaryMaterialColor,
                                  ),
                                ),
                              ],
                            ),
                            AppGaps.hGap20,
                            ClipOval(
                              child: Stack(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(
                                      Helper.getAssetName(
                                        "user.jpg",
                                        "real",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: 20,
                                      width: 80,
                                      color: Colors.black.withOpacity(0.3),
                                      child: Image.asset(Helper.getAssetName(
                                          "camera.png", "virtual")),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            AppGaps.hGap10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Helper.getAssetName(
                                      "edit_filled.png", "virtual"),
                                ),
                                AppGaps.wGap5,
                                const Text(
                                  "Edit Profile",
                                  style:
                                      TextStyle(color: AppColors.orangeColor),
                                ),
                              ],
                            ),
                            AppGaps.hGap10,
                            Text(
                              "Hi there ${controller.user.email}!",
                              style: Helper.getTheme(context)
                                  .headlineMedium
                                  ?.copyWith(
                                    color: AppColors.greyDark,
                                  ),
                            ),
                            AppGaps.hGap5,
                            InkWell(
                              onTap: controller.signOut,
                              child: Text(
                                "Sign Out",
                                style: AppTextStyles.bodyBoldTextStyle.copyWith(
                                  color: AppColors.primaryMaterialColor,
                                ),
                              ),
                            ),
                            AppGaps.hGap40,
                            CustomFormImput(
                              label: "Name",
                              value: controller.user.displayName ?? 'User Name',
                            ),
                            AppGaps.hGap20,
                            CustomFormImput(
                              label: "Email",
                              value: controller.user.email ?? 'user@mail.com',
                            ),
                            AppGaps.hGap20,
                            CustomFormImput(
                              label: "Mobile No",
                              value: controller.user.phoneNumber ??
                                  '+44 123 456 789',
                            ),
                            AppGaps.hGap20,
                            CustomFormImput(
                              label: "Address",
                              value: "No 23, 6th Lane, Colombo 03",
                            ),
                            AppGaps.hGap20,
                            CustomFormImput(
                              label: "Password",
                              value: "Emilia Clarke",
                              isPassword: true,
                            ),
                            AppGaps.hGap20,
                            CustomFormImput(
                              label: "Confirm Password",
                              value: "Emilia Clarke",
                              isPassword: true,
                            ),
                            AppGaps.hGap20,
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Save",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: CustomNavBar(
                    profile: true,
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class CustomFormImput extends StatelessWidget {
  const CustomFormImput({
    super.key,
    required String label,
    required String value,
    bool isPassword = false,
  })  : _label = label,
        _value = value,
        _isPassword = isPassword;

  final String _label;
  final String _value;
  final bool _isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 40),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColors.placeholderBg,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: _label,
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
        ),
        obscureText: _isPassword,
        initialValue: _value,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
