import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:scooter/widgets/custom_outlined_button.dart';
import 'package:scooter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileBottomsheet extends StatelessWidget {
  ProfileBottomsheet({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 38.v),
        decoration: AppDecoration.fillOnErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 62.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text("Enter:",
                      style: CustomTextStyles
                          .headlineSmallRedHatTextBlack90001Regular))),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: CustomTextFormField(
                  controller: priceController,
                  hintText: "UZS",
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.all(8.h))),
          SizedBox(height: 82.v),
          Padding(
              padding: EdgeInsets.only(left: 20.h, right: 14.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomOutlinedButton(
                    width: 153.h,
                    text: "Cancel",
                    onPressed: () {
                      onTapCancel(context);
                    }),
                CustomElevatedButton(
                    width: 153.h,
                    text: "Next",
                    margin: EdgeInsets.only(left: 18.h),
                    onPressed: () {
                      onTapNext(context);
                    })
              ]))
        ]));
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }

  /// Navigates to the paymentFiveScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentFiveScreen);
  }
}
