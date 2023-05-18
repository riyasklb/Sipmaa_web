// ignore_for_file: prefer_const_declarations, non_constant_identifier_names

// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:reg_login/app/modules/authentication/signin/views/signin.dart';
import 'package:reg_login/app/modules/screens/Settings/controller/settings_controller.dart';

import '../modules/screens/Settings/views/widgets/change_password.dart';
import '../modules/screens/Settings/views/settings.dart';
import '../modules/screens/profile/views/profile_page.dart';
import '../modules/screens/home/home_screen.dart';
import '../modules/authentication/OTP/views/otp.dart';
import '../modules/authentication/forgotPassword/views/forgotpassword.dart';
import '../modules/authentication/register/views/registerscreen.dart';
import '../modules/authentication/register/views/register.dart';
import '../modules/authentication/register/views/registersplash.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static String INITIAL = Routes.SIGN_IN;

  static final routes = [
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      // binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const FORGOTPASSWORD(),
      // binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_VIEWS,
      page: () => const REGISTERVIEWS(),
      // binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VIEWS,
      page: () => const OTPVIEWS(),
      // binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.Resgister_2,
      page: () => const Resgister2(),
      // binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.Resgister_Splash,
      page: () => const Registersplash(),
      // binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePage(),
      // binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.Profile_Screen,
      page: () => const ProfileScreen(),
      // binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.Settings_page,
      page: () => const SettingsPage(),
      // binding: SettingsController(),
    ),
    GetPage(
      name: _Paths.Change_password,
      page: () => const Changepassword(),
      // binding: SignInBinding(),
    ),
  ];
}
