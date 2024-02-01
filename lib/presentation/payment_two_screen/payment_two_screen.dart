import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:scooter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentTwoScreen extends StatelessWidget {
  PaymentTwoScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 54.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgIcOutlineNavigateNext,
                          height: 42.v,
                          width: 43.h,
                          margin: EdgeInsets.only(left: 14.h)),
                      SizedBox(height: 83.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: CustomTextFormField(
                              controller: priceController,
                              hintText: "UZS",
                              alignment: Alignment.center,
                              contentPadding: EdgeInsets.all(8.h))),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Enter the price",
                              style: CustomTextStyles.titleSmallOnPrimary_1)),
                      Spacer(flex: 27),
                      Padding(
                          padding: EdgeInsets.only(right: 43.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 5.v),
                                    child: Text("OUR CODE",
                                        style: CustomTextStyles
                                            .titleSmallPrimary)),
                                Padding(
                                    padding: EdgeInsets.only(top: 5.v),
                                    child: Text("1001110",
                                        style: CustomTextStyles
                                            .titleSmallOnPrimary))
                              ])),
                      SizedBox(height: 39.v),
                      Padding(
                          padding: EdgeInsets.only(right: 19.h),
                          child: CustomTextFormField(
                              controller: priceController1,
                              hintText: "10 000.00 UZS",
                              hintStyle:
                                  CustomTextStyles.bodyMediumPTSansOnPrimary,
                              textInputAction: TextInputAction.done,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 3.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.underLineIndigo,
                              filled: false)),
                      SizedBox(height: 25.v),
                      _buildRowWithRentalPriceAndPrice(context),
                      SizedBox(height: 3.v),
                      Divider(color: appTheme.indigo100, endIndent: 21.h),
                      Spacer(flex: 72),
                      SizedBox(height: 58.v),
                      CustomElevatedButton(
                          text: "Next",
                          margin: EdgeInsets.symmetric(horizontal: 10.h),
                          onPressed: () {
                            onTapNext(context);
                          },
                          alignment: Alignment.center)
                    ]))));
  }

  /// Section Widget
  Widget _buildRowWithRentalPriceAndPrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 18.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("Rental price",
                  style: CustomTextStyles.titleSmallOnPrimary_1)),
          Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Text("15 000.00 UZS",
                  style: CustomTextStyles.bodyMediumPTSansOnPrimary))
        ]));
  }

  /// Navigates to the paymentFourScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentFourScreen);
  }
}
