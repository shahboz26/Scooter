import 'package:flutter/material.dart';
import 'package:scooter/presentation/starting_screen/starting_screen.dart';
import 'package:scooter/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:scooter/presentation/log_in_screen/log_in_screen.dart';
import 'package:scooter/presentation/home_screen/home_screen.dart';
import 'package:scooter/presentation/qrscanner_screen/qrscanner_screen.dart';
import 'package:scooter/presentation/rent_screen/rent_screen.dart';
import 'package:scooter/presentation/history_screen/history_screen.dart';
import 'package:scooter/presentation/menu_screen/menu_screen.dart';
import 'package:scooter/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:scooter/presentation/payment_five_screen/payment_five_screen.dart';
import 'package:scooter/presentation/payment_three_screen/payment_three_screen.dart';
import 'package:scooter/presentation/payment_two_screen/payment_two_screen.dart';
import 'package:scooter/presentation/payment_four_screen/payment_four_screen.dart';
import 'package:scooter/presentation/payment_one_screen/payment_one_screen.dart';
import 'package:scooter/presentation/track_screen/track_screen.dart';
import 'package:scooter/presentation/payment_screen/payment_screen.dart';
import 'package:scooter/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startingScreen = '/starting_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String logInScreen = '/log_in_screen';

  static const String homeScreen = '/home_screen';

  static const String qrscannerScreen = '/qrscanner_screen';

  static const String rentScreen = '/rent_screen';

  static const String historyScreen = '/history_screen';

  static const String menuScreen = '/menu_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String paymentFiveScreen = '/payment_five_screen';

  static const String paymentThreeScreen = '/payment_three_screen';

  static const String paymentTwoScreen = '/payment_two_screen';

  static const String paymentFourScreen = '/payment_four_screen';

  static const String paymentOneScreen = '/payment_one_screen';

  static const String trackScreen = '/track_screen';

  static const String paymentScreen = '/payment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    startingScreen: (context) => StartingScreen(),
    signUpScreen: (context) => SignUpScreen(),
    logInScreen: (context) => LogInScreen(),
    homeScreen: (context) => HomeScreen(),
    qrscannerScreen: (context) => QrscannerScreen(),
    rentScreen: (context) => RentScreen(),
    historyScreen: (context) => HistoryScreen(),
    menuScreen: (context) => MenuScreen(),
    profileOneScreen: (context) => ProfileOneScreen(),
    paymentFiveScreen: (context) => PaymentFiveScreen(),
    paymentThreeScreen: (context) => PaymentThreeScreen(),
    paymentTwoScreen: (context) => PaymentTwoScreen(),
    paymentFourScreen: (context) => PaymentFourScreen(),
    paymentOneScreen: (context) => PaymentOneScreen(),
    trackScreen: (context) => TrackScreen(),
    paymentScreen: (context) => PaymentScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
