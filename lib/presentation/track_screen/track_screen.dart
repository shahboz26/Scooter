import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:scooter/widgets/custom_icon_button.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurple100,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 67.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                          height: 42.v,
                          width: 43.h,
                          padding: EdgeInsets.all(10.h),
                          onTap: () {
                            onTapBtnArrowLeft(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft)),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Row(children: [
                            Text("Online for: ",
                                style: CustomTextStyles
                                    .titleLargeWorkSansBluegray500),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text("00:12:17 ",
                                    style: CustomTextStyles
                                        .titleLargeWorkSansBluegray500Bold))
                          ])),
                      SizedBox(height: 14.v),
                      _buildTrackRow(context),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                          height: 50.v,
                          text: "Finish the ride",
                          margin: EdgeInsets.only(left: 11.h, right: 4.h),
                          buttonTextStyle: CustomTextStyles.titleSmallWorkSans,
                          onPressed: () {
                            onTapFinishTheRide(context);
                          }),
                      SizedBox(height: 7.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildTrackRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 11.h, right: 4.h),
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage1094x76,
                  height: 94.v,
                  width: 76.h,
                  margin: EdgeInsets.only(left: 24.h)),
              Spacer(),
              SizedBox(
                  height: 94.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: appTheme.gray200,
                      indent: 7.h,
                      endIndent: 7.h)),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, top: 6.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("Yamato E-Scooter",
                                style: CustomTextStyles
                                    .titleMediumWorkSansBluegray500)),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child:
                                Text("J1", style: theme.textTheme.labelMedium)),
                        SizedBox(height: 6.v),
                        SizedBox(
                            width: 180.h,
                            child: Divider(color: appTheme.gray200)),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Row(children: [
                              Container(
                                  height: 12.v,
                                  width: 17.h,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.h, vertical: 2.v),
                                  decoration: AppDecoration.fillGreen.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgVector,
                                      height: 6.v,
                                      width: 5.h,
                                      alignment: Alignment.bottomRight)),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("Battery left",
                                      style: theme.textTheme.labelMedium))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Row(children: [
                              Opacity(
                                  opacity: 0.9,
                                  child: Text("89",
                                      style: CustomTextStyles
                                          .headlineMediumWorkSansBluegray500)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 9.h, top: 9.v, bottom: 8.v),
                                  child: Text("percent",
                                      style: CustomTextStyles
                                          .labelLargeWorkSansIndigo200))
                            ]))
                      ]))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapFinishTheRide(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreen);
  }
}
