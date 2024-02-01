import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:scooter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileOneScreen extends StatelessWidget {
  ProfileOneScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController birthDayValueController = TextEditingController();

  TextEditingController genderValueController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 40.h, vertical: 96.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 12.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgArrowDown,
                                      height: 18.v,
                                      width: 26.h,
                                      margin: EdgeInsets.only(left: 11.h),
                                      onTap: () {
                                        onTapImgArrowDown(context);
                                      }),
                                  SizedBox(height: 66.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Text("Profile",
                                          style: CustomTextStyles
                                              .headlineSmallAlicePrimary)),
                                  SizedBox(height: 44.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Text("Full Name:",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 13.v),
                                  _buildFullName(context),
                                  SizedBox(height: 19.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Text("Email:",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 15.v),
                                  _buildEmail(context),
                                  SizedBox(height: 22.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("Phone number:",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 13.v),
                                  _buildPhoneNumber(context),
                                  SizedBox(height: 23.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Text("Birth Day:",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 12.v),
                                  _buildSixtyThree(context),
                                  SizedBox(height: 23.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("Gender:",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 13.v),
                                  _buildGenderValue(context),
                                  Spacer(),
                                  _buildSaveChanges(context)
                                ])))))));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: CustomTextFormField(
            controller: fullNameController,
            hintText: "Name Surname",
            hintStyle: CustomTextStyles.titleLargeRobotoGray500Regular,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 6.v, 9.h, 1.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgBxseditalt,
                    height: 21.v,
                    width: 23.h)),
            suffixConstraints: BoxConstraints(maxHeight: 28.v),
            contentPadding: EdgeInsets.only(left: 4.h),
            borderDecoration: TextFormFieldStyleHelper.underLineIndigo,
            filled: false));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "xxxxxxxxxxx@gmail.com",
            textInputType: TextInputType.emailAddress,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 4.v, 9.h, 1.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgBxseditalt,
                    height: 21.v,
                    width: 23.h)),
            suffixConstraints: BoxConstraints(maxHeight: 26.v),
            contentPadding: EdgeInsets.only(left: 3.h),
            borderDecoration: TextFormFieldStyleHelper.underLineIndigo,
            filled: false));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: phoneNumberController,
            hintText: "+998 901234567",
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 6.v, 13.h, 1.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgBxseditalt,
                    height: 21.v,
                    width: 23.h)),
            suffixConstraints: BoxConstraints(maxHeight: 28.v),
            contentPadding: EdgeInsets.only(left: 3.h),
            borderDecoration: TextFormFieldStyleHelper.underLineIndigo,
            filled: false));
  }

  /// Section Widget
  Widget _buildBirthDayValue(BuildContext context) {
    return CustomTextFormField(
        width: 344.h,
        controller: birthDayValueController,
        hintText: "08.09.2004",
        alignment: Alignment.center,
        contentPadding: EdgeInsets.symmetric(horizontal: 3.h),
        borderDecoration: TextFormFieldStyleHelper.underLineIndigo,
        filled: false);
  }

  /// Section Widget
  Widget _buildSixtyThree(BuildContext context) {
    return Container(
        height: 28.v,
        width: 344.h,
        margin: EdgeInsets.only(left: 5.h),
        child: Stack(alignment: Alignment.bottomRight, children: [
          _buildBirthDayValue(context),
          CustomImageView(
              imagePath: ImageConstant.imgBxseditalt,
              height: 21.v,
              width: 23.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 13.h, bottom: 1.v))
        ]));
  }

  /// Section Widget
  Widget _buildGenderValue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: genderValueController,
            hintText: "Male",
            textInputAction: TextInputAction.done,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 6.v, 13.h, 1.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgBxseditalt,
                    height: 21.v,
                    width: 23.h)),
            suffixConstraints: BoxConstraints(maxHeight: 28.v),
            contentPadding: EdgeInsets.only(left: 3.h),
            borderDecoration: TextFormFieldStyleHelper.underLineIndigo,
            filled: false));
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "Save Changes",
        onPressed: () {
          onTapSaveChanges(context);
        });
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapImgArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapSaveChanges(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
