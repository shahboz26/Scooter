import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurple100,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 57.v),
                child: Column(children: [
                  _buildMenuIconOne(context),
                  Spacer(),
                  SizedBox(height: 19.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup561,
                      height: 120.adaptSize,
                      width: 120.adaptSize,
                      onTap: () {
                        onTapImgImage(context);
                      })
                ]))));
  }

  /// Section Widget
  Widget _buildMenuIconOne(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMenuIcon1,
          height: 30.v,
          width: 42.h,
          margin: EdgeInsets.only(top: 3.v),
          onTap: () {
            onTapImgMenuIconOne(context);
          }),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: CustomSearchView(
                  controller: searchController, hintText: "Search")))
    ]);
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapImgMenuIconOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }

  /// Navigates to the qrscannerScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.qrscannerScreen);
  }
}
