import 'package:mykanjeeflutter/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:mykanjeeflutter/presentation/sign_up_one_screen/binding/sign_up_one_binding.dart';
import 'package:mykanjeeflutter/presentation/splash_screen/splash_screen.dart';
import 'package:mykanjeeflutter/presentation/splash_screen/binding/splash_binding.dart';
import 'package:mykanjeeflutter/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:mykanjeeflutter/presentation/sign_up_two_screen/binding/sign_up_two_binding.dart';
import 'package:mykanjeeflutter/presentation/signupotp_screen/signupotp_screen.dart';
import 'package:mykanjeeflutter/presentation/signupotp_screen/binding/signupotp_binding.dart';
import 'package:mykanjeeflutter/presentation/logintwo_screen/logintwo_screen.dart';
import 'package:mykanjeeflutter/presentation/logintwo_screen/binding/logintwo_binding.dart';
import 'package:mykanjeeflutter/presentation/loginwithnumber_screen/loginwithnumber_screen.dart';
import 'package:mykanjeeflutter/presentation/loginwithnumber_screen/binding/loginwithnumber_binding.dart';
import 'package:mykanjeeflutter/presentation/loginotp_screen/loginotp_screen.dart';
import 'package:mykanjeeflutter/presentation/loginotp_screen/binding/loginotp_binding.dart';
import 'package:mykanjeeflutter/presentation/forgotpassword_screen/forgotpassword_screen.dart';
import 'package:mykanjeeflutter/presentation/forgotpassword_screen/binding/forgotpassword_binding.dart';
import 'package:mykanjeeflutter/presentation/forgetpasswordotp_screen/forgetpasswordotp_screen.dart';
import 'package:mykanjeeflutter/presentation/forgetpasswordotp_screen/binding/forgetpasswordotp_binding.dart';
import 'package:mykanjeeflutter/presentation/resetpassword_screen/resetpassword_screen.dart';
import 'package:mykanjeeflutter/presentation/resetpassword_screen/binding/resetpassword_binding.dart';
import 'package:mykanjeeflutter/presentation/home_screen/home_screen.dart';
import 'package:mykanjeeflutter/presentation/home_screen/binding/home_binding.dart';
import 'package:mykanjeeflutter/presentation/shopping_home_tab_container_screen/shopping_home_tab_container_screen.dart';
import 'package:mykanjeeflutter/presentation/shopping_home_tab_container_screen/binding/shopping_home_tab_container_binding.dart';
import 'package:mykanjeeflutter/presentation/product_category_screen/product_category_screen.dart';
import 'package:mykanjeeflutter/presentation/product_category_screen/binding/product_category_binding.dart';
import 'package:mykanjeeflutter/presentation/product_screen/product_screen.dart';
import 'package:mykanjeeflutter/presentation/product_screen/binding/product_binding.dart';
import 'package:mykanjeeflutter/presentation/review_cart_container_screen/review_cart_container_screen.dart';
import 'package:mykanjeeflutter/presentation/review_cart_container_screen/binding/review_cart_container_binding.dart';
import 'package:mykanjeeflutter/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mykanjeeflutter/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String signupotpScreen = '/signupotp_screen';

  static const String logintwoScreen = '/logintwo_screen';

  static const String loginwithnumberScreen = '/loginwithnumber_screen';

  static const String loginotpScreen = '/loginotp_screen';

  static const String forgotpasswordScreen = '/forgotpassword_screen';

  static const String forgetpasswordotpScreen = '/forgetpasswordotp_screen';

  static const String resetpasswordScreen = '/resetpassword_screen';

  static const String homeScreen = '/home_screen';

  static const String shoppingHomePage = '/shopping_home_page';

  static const String shoppingHomeTabContainerScreen =
      '/shopping_home_tab_container_screen';

  static const String productCategoryScreen = '/product_category_screen';

  static const String productScreen = '/product_screen';

  static const String reviewCartPage = '/review_cart_page';

  static const String reviewCartContainerScreen =
      '/review_cart_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpOneScreen,
      page: () => SignUpOneScreen(),
      bindings: [
        SignUpOneBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signUpTwoScreen,
      page: () => SignUpTwoScreen(),
      bindings: [
        SignUpTwoBinding(),
      ],
    ),
    GetPage(
      name: signupotpScreen,
      page: () => SignupotpScreen(),
      bindings: [
        SignupotpBinding(),
      ],
    ),
    GetPage(
      name: logintwoScreen,
      page: () => LogintwoScreen(),
      bindings: [
        LogintwoBinding(),
      ],
    ),
    GetPage(
      name: loginwithnumberScreen,
      page: () => LoginwithnumberScreen(),
      bindings: [
        LoginwithnumberBinding(),
      ],
    ),
    GetPage(
      name: loginotpScreen,
      page: () => LoginotpScreen(),
      bindings: [
        LoginotpBinding(),
      ],
    ),
    GetPage(
      name: forgotpasswordScreen,
      page: () => ForgotpasswordScreen(),
      bindings: [
        ForgotpasswordBinding(),
      ],
    ),
    GetPage(
      name: forgetpasswordotpScreen,
      page: () => ForgetpasswordotpScreen(),
      bindings: [
        ForgetpasswordotpBinding(),
      ],
    ),
    GetPage(
      name: resetpasswordScreen,
      page: () => ResetpasswordScreen(),
      bindings: [
        ResetpasswordBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: shoppingHomeTabContainerScreen,
      page: () => ShoppingHomeTabContainerScreen(),
      bindings: [
        ShoppingHomeTabContainerBinding(),
      ],
    ),
    GetPage(
      name: productCategoryScreen,
      page: () => ProductCategoryScreen(),
      bindings: [
        ProductCategoryBinding(),
      ],
    ),
    GetPage(
      name: productScreen,
      page: () => ProductScreen(),
      bindings: [
        ProductBinding(),
      ],
    ),
    GetPage(
      name: reviewCartContainerScreen,
      page: () => ReviewCartContainerScreen(),
      bindings: [
        ReviewCartContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
