import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:scooter/widgets/custom_rating_bar.dart';

class RentScreen extends StatelessWidget {
  const RentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(top: 18.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 59.v),
                          decoration: AppDecoration.fillPrimaryContainer,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, right: 30.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              child: Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 5.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "ELECTRO   SCOOTER",
                                                            style: CustomTextStyles
                                                                .bodyMediumRedHatTextOnErrorContainer),
                                                        SizedBox(height: 5.v),
                                                        Text("Yamato E-Scooter",
                                                            style: theme
                                                                .textTheme
                                                                .headlineLarge)
                                                      ]))),
                                          Opacity(
                                              opacity: 0.5,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 40.h, bottom: 47.v),
                                                  child: Text("500m",
                                                      style: CustomTextStyles
                                                          .bodyLargeLatoOnErrorContainer)))
                                        ])),
                                SizedBox(height: 5.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: CustomRatingBar(initialRating: 0)),
                                SizedBox(height: 18.v),
                                _buildInitialPriceRow(context),
                                SizedBox(height: 15.v),
                                _buildPricePerMinuteRow(context),
                                SizedBox(height: 39.v),
                                CustomElevatedButton(
                                    height: 55.v,
                                    width: 155.h,
                                    text: "Confirm",
                                    margin: EdgeInsets.only(left: 100.h),
                                    buttonStyle: CustomButtonStyles.fillGray,
                                    buttonTextStyle: CustomTextStyles
                                        .titleLargeWorkSansPrimary,
                                    onPressed: () {
                                      onTapConfirm(context);
                                    })
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle16,
                      height: 579.v,
                      width: 430.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: 506.v,
                          width: 387.h,
                          margin: EdgeInsets.only(top: 41.v),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage10,
                                height: 506.v,
                                width: 387.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 80.v, right: 243.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Scooter ID:",
                                              style: theme.textTheme.bodySmall),
                                          Text("1274567",
                                              style:
                                                  theme.textTheme.displaySmall),
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                    height: 49.v,
                                                    width: 60.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Text("125",
                                                                  style: theme
                                                                      .textTheme
                                                                      .displaySmall)),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Text(
                                                                  "Battery",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall))
                                                        ])),
                                                Container(
                                                    height: 15.v,
                                                    width: 11.h,
                                                    margin: EdgeInsets.only(
                                                        left: 5.h,
                                                        top: 9.v,
                                                        bottom: 24.v),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Container(
                                                                  height: 1.v,
                                                                  width: 11.h,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          bottom: 1
                                                                              .v),
                                                                  decoration: BoxDecoration(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .primary))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Text("W",
                                                                  style: CustomTextStyles
                                                                      .bodySmallPrimaryRegular))
                                                        ]))
                                              ]),
                                          Row(children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Speed",
                                                      style: theme
                                                          .textTheme.bodySmall),
                                                  Text("32",
                                                      style: theme.textTheme
                                                          .displaySmall)
                                                ]),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 14.v,
                                                    bottom: 14.v),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("KM",
                                                          style: CustomTextStyles
                                                              .redHatTextPrimary),
                                                      SizedBox(height: 2.v),
                                                      Container(
                                                          height: 1.v,
                                                          width: 14.h,
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primary)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 4.h),
                                                          child: Text("h",
                                                              style: CustomTextStyles
                                                                  .bodySmallPrimary))
                                                    ]))
                                          ]),
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Weight",
                                                          style: CustomTextStyles
                                                              .bodySmallOnPrimaryContainer),
                                                      Text("12.5",
                                                          style: theme.textTheme
                                                              .displaySmall)
                                                    ]),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 3.h,
                                                        top: 13.v,
                                                        bottom: 30.v),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text("KG",
                                                                  style: CustomTextStyles
                                                                      .bodySmallPrimaryRegular9)),
                                                          Container(
                                                              height: 1.v,
                                                              width: 11.h,
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primary))
                                                        ]))
                                              ])
                                        ])))
                          ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: 30.v,
                          width: 32.h,
                          margin: EdgeInsets.only(left: 40.h, top: 73.v),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(10.h)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgIrisScan,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 42.h)),
                  CustomImageView(
                      imagePath: ImageConstant.imgIcOutlineNavigateNext,
                      height: 42.v,
                      width: 43.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 35.h, top: 67.v))
                ]))));
  }

  /// Section Widget
  Widget _buildInitialPriceRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Price for initial 20 minutes:",
              style: theme.textTheme.titleSmall),
          Text("15 000.00 UZS", style: theme.textTheme.titleSmall)
        ]));
  }

  /// Section Widget
  Widget _buildPricePerMinuteRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Price per minute(after):", style: theme.textTheme.titleSmall),
          Text("999.00 UZS", style: theme.textTheme.titleSmall)
        ]));
  }

  /// Navigates to the paymentTwoScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentTwoScreen);
  }
}
