import 'package:traffic_solution/widgets/custom_icon_button.dart';
import 'package:traffic_solution/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:traffic_solution/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxTwentysixScreen extends StatelessWidget {
  Iphone1415ProMaxTwentysixScreen({Key? key}) : super(key: key);

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
                  _buildThirtyFour(context),
                  SizedBox(height: 2.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 76.h,
                          margin: EdgeInsets.only(left: 35.h, right: 319.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.h, vertical: 6.v),
                          decoration: AppDecoration.fillBlueGray,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtHome(context);
                                    },
                                    child: Text(" Home",
                                        style:
                                            CustomTextStyles.bodySmallLight)),
                                SizedBox(height: 5.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtAccount(context);
                                    },
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(text: " "),
                                          TextSpan(
                                              text: "Account",
                                              style: CustomTextStyles
                                                  .bodySmallff000000Light)
                                        ]),
                                        textAlign: TextAlign.left)),
                                SizedBox(height: 2.v)
                              ]))),
                  SizedBox(height: 13.v),
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
  Widget _buildThirtyFour(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 19.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 46.v,
                  width: 35.h,
                  margin: EdgeInsets.only(top: 5.v),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomIconButton(
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        alignment: Alignment.topCenter,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgGroup5)),
                    CustomImageView(
                        imagePath: ImageConstant.imgFilter,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        alignment: Alignment.bottomCenter)
                  ])),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h, bottom: 5.v),
                      child: CustomSearchView(
                          controller: searchController,
                          hintText: " search place for live traffic"))),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse135x35,
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  radius: BorderRadius.circular(17.h),
                  margin: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 9.v))
            ]));
  }

  /// Navigates to the iphone1415ProMaxTwentytwoScreen when the action is triggered.
  onTapTxtHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwentytwoScreen);
  }

  /// Navigates to the iphone1415ProMaxTenScreen when the action is triggered.
  onTapTxtAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTenScreen);
  }
}
