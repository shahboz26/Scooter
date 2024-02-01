import 'package:flutter/material.dart';
import 'package:scooter/core/app_export.dart';

// ignore: must_be_immutable
class HistorylistItemWidget extends StatelessWidget {
  const HistorylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage10126x87,
            height: 126.v,
            width: 87.h,
            margin: EdgeInsets.only(bottom: 6.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 7.v,
              bottom: 14.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Yamato E-Scooter",
                    style: CustomTextStyles.titleLargeRedHatTextPrimary,
                  ),
                ),
                SizedBox(height: 7.v),
                Container(
                  width: 208.h,
                  margin: EdgeInsets.only(left: 17.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date: ",
                        style: theme.textTheme.bodyLarge,
                      ),
                      Text(
                        "14.03.2023",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                Container(
                  width: 208.h,
                  margin: EdgeInsets.only(left: 17.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price: ",
                        style: theme.textTheme.bodyLarge,
                      ),
                      Text(
                        "19 754.00 UZS",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                Container(
                  width: 208.h,
                  margin: EdgeInsets.only(left: 17.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Scooter ID:",
                        style: theme.textTheme.bodyLarge,
                      ),
                      Text(
                        "hKw4ewf",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
