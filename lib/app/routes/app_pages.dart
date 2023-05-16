
// ignore_for_file: prefer_const_declarations, non_constant_identifier_names

// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:reg_login/app/modules/authentication/signin/views/signin.dart';

import '../modules/authentication/signin/views/signin.dart';
import '../modules/authentication/signin/views/signin.dart';
import '../modules/authentication/signin/views/signin.dart';

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
    
  ];
}
