import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';
import 'package:scooter/widgets/custom_elevated_button.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgStartingScreen),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 112.v),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(flex: 32),
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgPicsart240118193410380,
                              height: 55.v,
                              width: 212.h),
                          Spacer(flex: 31),
                          SizedBox(
                              height: 85.v,
                              width: 229.h,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            width: 206.h,
                                            child: Text(
                                                "Healthier life with \nScooter",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: theme.textTheme
                                                    .headlineMedium))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 37.v),
                                            child: SizedBox(
                                                width: 229.h,
                                                child: Divider(
                                                    color: appTheme
                                                        .deepPurpleA400))))
                                  ])),
                          Spacer(flex: 36),
                          CustomElevatedButton(
                              width: 243.h,
                              text: "Get Started",
                              rightIcon: Container(
                                  margin: EdgeInsets.only(left: 1.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowright,
                                      height: 18.v,
                                      width: 20.h)),
                              buttonStyle: CustomButtonStyles.outlineBlack,
                              onPressed: () {
                                onTapGetStarted(context);
                              })
                        ])))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
