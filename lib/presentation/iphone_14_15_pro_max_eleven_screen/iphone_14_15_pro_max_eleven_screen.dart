import 'package:traffic_solution/widgets/custom_icon_button.dart';
import 'package:traffic_solution/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:traffic_solution/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxElevenScreen extends StatelessWidget {
  Iphone1415ProMaxElevenScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 61.v),
                  _buildTwentySix(context),
                  SizedBox(height: 67.v),
                  SizedBox(
                      height: 758.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 16.v),
                                child: Text("3/15",
                                    style: theme.textTheme.bodySmall))),
                        CustomImageView(
                            imagePath: ImageConstant.imgTrafficPic1Ed,
                            height: 758.v,
                            width: 430.h,
                            alignment: Alignment.center)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: CustomIconButton(
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  onTap: () {
                    onTapBtnIconButton(context);
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgGroup5))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomSearchView(
                      controller: searchController,
                      hintText: " search place for live traffic"))),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse135x35,
              height: 35.adaptSize,
              width: 35.adaptSize,
              radius: BorderRadius.circular(17.h),
              margin: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 4.v),
              onTap: () {
                onTapImgCircleImage(context);
              })
        ]));
  }

  /// Navigates to the iphone1415ProMaxTwentysixScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwentysixScreen);
  }

  /// Navigates to the iphone1415ProMaxTenScreen when the action is triggered.
  onTapImgCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTenScreen);
  }
}
