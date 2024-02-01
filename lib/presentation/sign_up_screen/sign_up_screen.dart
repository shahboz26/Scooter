import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:scooter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                                horizontal: 52.h, vertical: 118.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 53.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("Sign Up",
                                          style:
                                              theme.textTheme.displayMedium)),
                                  SizedBox(height: 27.v),
                                  SizedBox(
                                      width: 69.h,
                                      child: Divider(indent: 15.h)),
                                  SizedBox(height: 69.v),
                                  _buildFullName(context),
                                  SizedBox(height: 22.v),
                                  _buildEmail(context),
                                  SizedBox(height: 22.v),
                                  _buildPassword(context),
                                  SizedBox(height: 57.v),
                                  _buildSignUpButton(context),
                                  Spacer(),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 17.v, bottom: 14.v),
                                                child: Text(
                                                    "Have an account Already?",
                                                    style: theme
                                                        .textTheme.bodyMedium)),
                                            _buildLoginButton(context)
                                          ]))
                                ])))))));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: CustomTextFormField(
            controller: fullNameController,
            hintText: "FULL NAME",
            hintStyle: CustomTextStyles.bodyLargeRoboto));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "EMAIL ",
            hintStyle: CustomTextStyles.bodyLargeRoboto,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "PASSWORD",
            hintStyle: CustomTextStyles.bodyLargeImprima,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        height: 55.v,
        text: "Sign Up",
        margin: EdgeInsets.only(left: 3.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleLargeInter);
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        width: 87.h,
        text: "LOG IN",
        buttonStyle: CustomButtonStyles.fillDeepPurple,
        buttonTextStyle: theme.textTheme.labelLarge!,
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
