import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:scooter/widgets/custom_icon_button.dart';

class QrscannerScreen extends StatelessWidget {
  const QrscannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 35.h),
                          child: CustomIconButton(
                              height: 42.v,
                              width: 43.h,
                              padding: EdgeInsets.all(10.h),
                              alignment: Alignment.centerLeft,
                              onTap: () {
                                onTapBtnArrowLeft(context);
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft))),
                      SizedBox(height: 64.v),
                      SizedBox(
                          height: 536.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle45,
                                height: 536.v,
                                width: 430.h,
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant.imgSubtract,
                                height: 536.v,
                                width: 430.h,
                                alignment: Alignment.center)
                          ])),
                      SizedBox(height: 89.v),
                      CustomElevatedButton(
                          height: 50.v,
                          width: 200.h,
                          text: "Scan",
                          buttonTextStyle: CustomTextStyles.titleLargeWorkSans,
                          onPressed: () {
                            onTapScan(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the rentScreen when the action is triggered.
  onTapScan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }
}
