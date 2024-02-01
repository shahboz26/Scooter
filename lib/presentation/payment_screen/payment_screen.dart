import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 50.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgIcOutlineNavigateNext,
                          height: 42.v,
                          width: 43.h),
                      SizedBox(height: 61.v),
                      Container(
                          height: 178.v,
                          width: 183.h,
                          margin: EdgeInsets.only(left: 68.h),
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
                          padding: EdgeInsets.only(left: 97.h),
                          child: Text("Thank You",
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 54.v),
                      Text("Your ride finished",
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 22.v),
                      Container(
                          width: 325.h,
                          margin: EdgeInsets.only(right: 24.h),
                          child: Text(
                              "Great job! You have successfully finished your ride. ",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeRobotoGray700)),
                      SizedBox(height: 47.v),
                      Padding(
                          padding: EdgeInsets.only(right: 22.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 3.v),
                                    child: Text("Total cost:",
                                        style:
                                            CustomTextStyles.bodyLargePTSans)),
                                Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text("20,000 so’m",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer))
                              ])),
                      Spacer(),
                      SizedBox(height: 77.v),
                      CustomElevatedButton(
                          text: "Back to Home",
                          onPressed: () {
                            onTapBackToHome(context);
                          })
                    ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBackToHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
