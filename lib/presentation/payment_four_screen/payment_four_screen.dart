import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PaymentFourScreen extends StatelessWidget {
  const PaymentFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 50.v),
                child: Column(children: [
                  SizedBox(
                      height: 488.v,
                      width: 318.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 2.h, right: 11.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIcOutlineNavigateNext,
                                          height: 42.v,
                                          width: 43.h),
                                      SizedBox(height: 83.v),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage12,
                                          height: 53.v,
                                          width: 85.h,
                                          alignment: Alignment.centerRight,
                                          margin:
                                              EdgeInsets.only(right: 101.h)),
                                      SizedBox(height: 16.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 10.v,
                                              child: AnimatedSmoothIndicator(
                                                  activeIndex: 0,
                                                  count: 3,
                                                  effect: ScrollingDotsEffect(
                                                      spacing: 14,
                                                      activeDotColor: appTheme
                                                          .deepPurple10001,
                                                      dotColor:
                                                          appTheme.gray300,
                                                      activeDotScale: 1.25,
                                                      dotHeight: 8.v,
                                                      dotWidth: 8.h)))),
                                      SizedBox(height: 33.v),
                                      Text("Card ",
                                          style: CustomTextStyles
                                              .titleLargePTSansPrimary),
                                      SizedBox(height: 42.v),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                              height: 182.v,
                                              width: 286.h,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgBlueCreditCar,
                                                        height: 182.v,
                                                        width: 286.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment: Alignment
                                                            .center,
                                                        child: Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        9.h),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                      height:
                                                                          50.v,
                                                                      width:
                                                                          44.h,
                                                                      decoration: BoxDecoration(
                                                                          color: theme
                                                                              .colorScheme
                                                                              .errorContainer)),
                                                                  SizedBox(
                                                                      height:
                                                                          62.v),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Container(
                                                                          height: 55
                                                                              .v,
                                                                          width: 36
                                                                              .h,
                                                                          decoration:
                                                                              BoxDecoration(color: appTheme.indigo900)))
                                                                ])))
                                                  ])))
                                    ]))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(top: 51.v),
                                child: Text("Your ",
                                    style: CustomTextStyles
                                        .titleLargeRobotoBlack90001))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(top: 88.v),
                                child: Text("Payment Methods",
                                    style: CustomTextStyles
                                        .titleLargeRobotoBlack90001))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 58.v,
                                width: 108.h,
                                margin: EdgeInsets.only(top: 123.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 21.h, vertical: 8.v),
                                decoration: AppDecoration
                                    .outlinePrimaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgUnnamed1,
                                    height: 40.v,
                                    width: 63.h,
                                    alignment: Alignment.center))),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage11,
                            height: 27.v,
                            width: 93.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 139.v))
                      ])),
                  Spacer(),
                  SizedBox(height: 72.v),
                  CustomElevatedButton(
                      text: "Pay",
                      onPressed: () {
                        onTapPay(context);
                      })
                ]))));
  }

  /// Navigates to the paymentOneScreen when the action is triggered.
  onTapPay(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentOneScreen);
  }
}
