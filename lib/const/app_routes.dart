import 'package:get/get.dart';
import 'package:shop_now_mobile/const/app_page_names.dart';
import 'package:shop_now_mobile/screens/changeAddressScreen.dart';
import 'package:shop_now_mobile/screens/unknown_screen.dart';
import '../screens/splashScreen.dart';
import '../screens/landingScreen.dart';
import '../screens/login_screen.dart';
import '../screens/signUpScreen.dart';
import '../screens/forgetPwScreen.dart';
import '../screens/sentOTPScreen.dart';
import '../screens/newPwScreen.dart';
import '../screens/introScreen.dart';
import '../screens/homeScreen.dart';
import '../screens/menuScreen.dart';
import '../screens/moreScreen.dart';
import '../screens/offerScreen.dart';
import '../screens/profile_screen.dart';
import '../screens/dessertScreen.dart';
import '../screens/individualItem.dart';
import '../screens/paymentScreen.dart';
import '../screens/notificationScreen.dart';
import '../screens/aboutScreen.dart';
import '../screens/inboxScreen.dart';
import '../screens/myOrderScreen.dart';
import '../screens/checkoutScreen.dart';
import '../const/app_colors.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = [
    GetPage(name: AppPageNames.splashScreen, page: () => const SplashScreen()),
    GetPage(
        name: AppPageNames.landingScreen, page: () => const LandingScreen()),
    GetPage(name: AppPageNames.loginScreen, page: () => const LoginScreen()),
    GetPage(name: AppPageNames.signUpScreen, page: () => const SignUpScreen()),
    GetPage(
        name: AppPageNames.forgetPwScreen, page: () => const ForgetPwScreen()),
    GetPage(
        name: AppPageNames.sendOTPScreen, page: () => const SendOTPScreen()),
    GetPage(name: AppPageNames.newPwScreen, page: () => const NewPwScreen()),
    GetPage(name: AppPageNames.introScreen, page: () => const IntroScreens()),
    GetPage(name: AppPageNames.homeScreen, page: () => const HomeScreen()),
    GetPage(name: AppPageNames.menuScreen, page: () => const MenuScreen()),
    GetPage(name: AppPageNames.offerScreen, page: () => const OfferScreen()),
    GetPage(
        name: AppPageNames.profileScreen, page: () => const ProfileScreen()),
    GetPage(name: AppPageNames.moreScreen, page: () => const MoreScreen()),
    GetPage(
        name: AppPageNames.dessertScreen, page: () => const DessertScreen()),
    GetPage(
        name: AppPageNames.individualItemScreen,
        page: () => const IndividualItem()),
    GetPage(
        name: AppPageNames.paymentScreen, page: () => const PaymentScreen()),
    GetPage(
        name: AppPageNames.notificationsScreen,
        page: () => const NotificationScreen()),
    GetPage(name: AppPageNames.aboutScreen, page: () => const AboutScreen()),
    GetPage(name: AppPageNames.inboxScreen, page: () => const InboxScreen()),
    GetPage(
        name: AppPageNames.myOrderScreen, page: () => const MyOrderScreen()),
    GetPage(
        name: AppPageNames.checkoutScreen, page: () => const CheckoutScreen()),
    GetPage(
        name: AppPageNames.changeAddressScreen,
        page: () => const ChangeAddressScreen()),
  ];

  static final GetPage<dynamic> unknownScreenPageRoute = GetPage(
      name: AppPageNames.unknownScreen, page: () => const UnknownScreen());
}
