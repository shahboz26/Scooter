import '../history_screen/widgets/historylist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowDown,
                                    height: 19.v,
                                    width: 27.h,
                                    margin:
                                        EdgeInsets.only(top: 3.v, bottom: 9.v),
                                    onTap: () {
                                      onTapImgArrowDown(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 91.h),
                                    child: Text("History",
                                        style: CustomTextStyles
                                            .headlineSmallRedHatTextBlack90001))
                              ])),
                      SizedBox(height: 28.v),
                      _buildHistoryList(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildHistoryList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.0.v),
                  child: SizedBox(
                      width: 208.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.black90001)));
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return HistorylistItemWidget();
            }));
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapImgArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
