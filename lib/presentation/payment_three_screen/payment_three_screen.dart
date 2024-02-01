import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';

class PaymentThreeScreen extends StatelessWidget {
  const PaymentThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 59.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgIcOutlineNavigateNext,
                          height: 42.v,
                          width: 43.h,
                          margin: EdgeInsets.only(left: 5.h)),
                      SizedBox(height: 52.v),
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
                      SizedBox(height: 38.v),
                      Container(
                          width: 129.h,
                          margin: EdgeInsets.only(left: 94.h),
                          child: Text("Transaction successful",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.only(right: 22.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 4.v),
                                    child: Text("Transferred:",
                                        style:
                                            CustomTextStyles.bodyLargePTSans)),
                                Padding(
                                    padding: EdgeInsets.only(top: 3.v),
                                    child: Text("20,000 so’m",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer))
                              ])),
                      Spacer(),
                      SizedBox(height: 68.v),
                      CustomElevatedButton(
                          text: "Back to Menu",
                          onPressed: () {
                            onTapBackToMenu(context);
                          })
                    ]))));
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapBackToMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
