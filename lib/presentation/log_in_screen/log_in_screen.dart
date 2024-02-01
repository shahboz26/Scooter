import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';
import 'package:scooter/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

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
                                horizontal: 46.h, vertical: 116.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 55.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("Log In",
                                          style:
                                              theme.textTheme.displayMedium)),
                                  SizedBox(height: 27.v),
                                  SizedBox(
                                      width: 59.h, child: Divider(indent: 5.h)),
                                  SizedBox(height: 83.v),
                                  _buildEmailField(context),
                                  SizedBox(height: 22.v),
                                  _buildPasswordField(context),
                                  Spacer(flex: 50),
                                  _buildLoginButton(context),
                                  Spacer(flex: 49),
                                  Padding(
                                      padding: EdgeInsets.only(right: 15.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 17.v, bottom: 14.v),
                                                child: Text(
                                                    "Don’t Have an account yet?",
                                                    style: theme
                                                        .textTheme.bodyMedium)),
                                            _buildSignupButton(context)
                                          ]))
                                ])))))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 15.h),
        child: CustomTextFormField(
            controller: emailFieldController,
            hintText: "EMAIL ",
            hintStyle: CustomTextStyles.bodyLargeRoboto,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 15.h),
        child: CustomTextFormField(
            controller: passwordFieldController,
            hintText: "PASSWORD",
            hintStyle: CustomTextStyles.bodyLargeImprima,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        height: 55.v,
        text: "Log In",
        margin: EdgeInsets.only(right: 15.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleLargeInter);
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
        width: 87.h,
        text: "SIGN UP",
        buttonStyle: CustomButtonStyles.fillDeepPurple,
        buttonTextStyle: theme.textTheme.labelLarge!,
        onPressed: () {
          onTapSignupButton(context);
        });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignupButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
