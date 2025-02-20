import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_now_mobile/const/app_colors.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_images.dart';
import 'package:shop_now_mobile/utils/helper.dart';
import 'package:shop_now_mobile/widgets/custom_nav_bar.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = "/notiScreen";

  const NotificationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Notifications",
                        style: Helper.getTheme(context).headlineLarge,
                      ),
                    ),
                    Image.asset(
                      Helper.getAssetName("cart.png", "virtual"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              NotiCard(
                title: "Your order has been picked up",
                time: "Now",
              ),
              NotiCard(
                title: "Your order has been delivered",
                time: "1 h ago",
                color: AppColors.placeholderBg,
              ),
              NotiCard(
                title: "Lorem ipsum dolor sit amet, consectetur",
                time: "3 h ago",
              ),
              NotiCard(
                title: "Lorem ipsum dolor sit amet, consectetur",
                time: "5 h ago",
              ),
              NotiCard(
                title: "Lorem ipsum dolor sit amet, consectetur",
                time: "17 Feb 2025",
                color: AppColors.placeholderBg,
              ),
              NotiCard(
                title: "Lorem ipsum dolor sit amet, consectetur",
                time: "12 Feb 2025",
                color: AppColors.placeholderBg,
              ),
              NotiCard(
                title: "Lorem ipsum dolor sit amet, consectetur",
                time: "20 Jan 2025",
              ),
              NotiCard(
                title: "Lorem ipsum dolor sit amet, consectetur",
                time: "12 Jan 2025",
              ),
            ],
          )),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                menu: true,
              ))
        ],
      ),
    );
  }
}

class NotiCard extends StatelessWidget {
  const NotiCard({
    super.key,
    required this.time,
    required this.title,
    this.color,
  });

  final String time;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        border: Border(
          bottom: BorderSide(
            color: AppColors.placeholder,
            width: 0.5,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.orangeColor,
                radius: 5,
              ),
              AppGaps.hGap8,
              SvgPicture.asset(AppAssetImages.notificationSVGLogoLine),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.greyDark,
                ),
              ),
              Text(time),
            ],
          )
        ],
      ),
    );
  }
}
