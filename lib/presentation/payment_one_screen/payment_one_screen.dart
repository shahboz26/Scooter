import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';

class PaymentOneScreen extends StatelessWidget {
  const PaymentOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 51.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgIcOutlineNavigateNext,
                          height: 42.v,
                          width: 43.h,
                          margin: EdgeInsets.only(left: 13.h)),
                      SizedBox(height: 60.v),
                      Container(
                          height: 178.v,
                          width: 183.h,
                          margin: EdgeInsets.only(left: 81.h),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 178.v,
                                    width: 183.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(91.h),
                                        border: Border.all(
                                            color: theme
                                                .colorScheme.primaryContainer,
                                            width: 3.h)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgCart,
                                height: 89.v,
                                width: 99.h,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 39.h))
                          ])),
                      SizedBox(height: 48.v),
                      Padding(
                          padding: EdgeInsets.only(left: 110.h),
                          child: Text("Thank You",
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 34.v),
                      _buildPaymentDetails(context),
                      SizedBox(height: 42.v),
                      Container(
                          width: 331.h,
                          margin: EdgeInsets.only(left: 13.h, right: 31.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Well done Your payment is Successfully  done\nand your scooter is on its way.\n\n\n",
                                    style: CustomTextStyles
                                        .bodyLargeRedHatMonoff676767),
                                TextSpan(
                                    text: "\n",
                                    style: CustomTextStyles
                                        .bodyLargeRedHatMonoff000000)
                              ]),
                              textAlign: TextAlign.left)),
                      Spacer(),
                      SizedBox(height: 76.v),
                      CustomElevatedButton(
                          text: "Track",
                          margin: EdgeInsets.symmetric(horizontal: 13.h),
                          onPressed: () {
                            onTapTrack(context);
                          },
                          alignment: Alignment.center)
                    ]))));
  }

  /// Section Widget
  Widget _buildPaymentDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text("PAYMENT MADE", style: theme.textTheme.titleMedium)),
          Text("20,000 so’m",
              style: CustomTextStyles.titleMediumPrimaryContainer)
        ]));
  }

  /// Navigates to the trackScreen when the action is triggered.
  onTapTrack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.trackScreen);
  }
}
