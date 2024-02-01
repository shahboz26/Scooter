import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Starting screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.startingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QRScanner",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.qrscannerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Rent",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.rentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.historyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Menu",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.menuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Track",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.trackScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
