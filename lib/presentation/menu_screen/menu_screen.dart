import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:scooter/presentation/profile_bottomsheet/profile_bottomsheet.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 71.v),
                child: Column(children: [
                  _buildFrameTwentyTwo(context),
                  SizedBox(height: 50.v),
                  _buildFrameSeven(context),
                  SizedBox(height: 30.v),
                  _buildFrameTwentyFive(context),
                  Spacer(),
                  SizedBox(height: 38.v),
                  CustomElevatedButton(
                      text: "Log Out",
                      margin: EdgeInsets.only(left: 14.h, right: 16.h),
                      onPressed: () {
                        onTapLogOut(context);
                      })
                ]))));
  }

  /// Section Widget
  Widget _buildFrameTwentyTwo(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 21.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder35),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowDownOnerrorcontainer,
                                height: 18.v,
                                width: 26.h,
                                margin:
                                    EdgeInsets.only(top: 28.v, bottom: 54.v),
                                onTap: () {
                                  onTapImgArrowDown(context);
                                }),
                            Container(
                                height: 101.v,
                                width: 103.h,
                                margin: EdgeInsets.only(left: 83.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 31.h, vertical: 25.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: fs.Svg(ImageConstant.imgGroup12),
                                        fit: BoxFit.cover)),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgLock,
                                    height: 50.v,
                                    width: 40.h,
                                    alignment: Alignment.center))
                          ]))),
              SizedBox(height: 8.v),
              Text("Username",
                  style: CustomTextStyles.titleLargeIBMPlexSansThaiLooped),
              SizedBox(height: 23.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 51.v),
                            child: Text("Balance:",
                                style: CustomTextStyles
                                    .titleLargeIBMPlexSansThaiLoopedBold)),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("10 000.00 UZS",
                                  style: CustomTextStyles
                                      .titleLargeIBMPlexSansThaiLoopedBold),
                              SizedBox(height: 12.v),
                              CustomElevatedButton(
                                  height: 39.v,
                                  width: 101.h,
                                  text: "Fill",
                                  buttonStyle:
                                      CustomButtonStyles.fillOnErrorContainer,
                                  buttonTextStyle: CustomTextStyles
                                      .titleLargeRedHatTextPrimary,
                                  onPressed: () {
                                    onTapFill(context);
                                  },
                                  alignment: Alignment.centerRight)
                            ])
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildFrameSeven(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrameSeven(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLockGray500,
                      height: 28.v,
                      width: 29.h,
                      margin:
                          EdgeInsets.only(left: 4.h, top: 9.v, bottom: 9.v)),
                  Spacer(flex: 54),
                  Padding(
                      padding: EdgeInsets.only(top: 11.v, bottom: 12.v),
                      child: Text("My Profile",
                          style: CustomTextStyles.titleMediumRedHatText)),
                  Spacer(flex: 45),
                  CustomImageView(
                      imagePath: ImageConstant.imgIcOutlineNavigateNextPrimary,
                      height: 42.v,
                      width: 44.h,
                      margin: EdgeInsets.only(top: 4.v))
                ])));
  }

  /// Section Widget
  Widget _buildFrameTwentyFive(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrameTwentyFive(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      margin:
                          EdgeInsets.only(left: 2.h, top: 7.v, bottom: 7.v)),
                  Spacer(flex: 48),
                  Padding(
                      padding: EdgeInsets.only(top: 11.v, bottom: 12.v),
                      child: Text("History",
                          style: CustomTextStyles.titleMediumRedHatText)),
                  Spacer(flex: 51),
                  CustomImageView(
                      imagePath: ImageConstant.imgIcOutlineNavigateNextPrimary,
                      height: 42.v,
                      width: 44.h,
                      margin: EdgeInsets.only(top: 4.v))
                ])));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Shows a modal bottom sheet with [ProfileBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapFill(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ProfileBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the profileOneScreen when the action is triggered.
  onTapFrameSeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileOneScreen);
  }

  /// Navigates to the historyScreen when the action is triggered.
  onTapFrameTwentyFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.historyScreen);
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapLogOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
