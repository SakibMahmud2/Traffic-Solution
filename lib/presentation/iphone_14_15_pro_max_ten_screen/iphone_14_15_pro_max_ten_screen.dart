import 'package:traffic_solution/widgets/app_bar/custom_app_bar.dart';
import 'package:traffic_solution/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'widgets/fortythree_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:traffic_solution/core/app_export.dart';

class Iphone1415ProMaxTenScreen extends StatelessWidget {
  const Iphone1415ProMaxTenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 59.h, vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(left: 28.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 56.v),
                              decoration: AppDecoration.fillGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse1150x150,
                                        height: 150.adaptSize,
                                        width: 150.adaptSize,
                                        radius: BorderRadius.circular(75.h)),
                                    SizedBox(height: 15.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(text: "   "),
                                          TextSpan(
                                              text: "Mr. Alex",
                                              style: CustomTextStyles
                                                  .headlineLargeSemiBold)
                                        ]),
                                        textAlign: TextAlign.left),
                                    SizedBox(height: 51.v),
                                    _buildFortyThree(context),
                                    SizedBox(height: 4.v)
                                  ]))),
                      SizedBox(height: 56.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowDown,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 4.h, bottom: 3.v),
                                child: Text("Log Out",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgQuestion,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 5.h, bottom: 3.v),
                                child: Text("Switch Account",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 53.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("2/15", style: theme.textTheme.bodySmall))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgGroup19,
            margin: EdgeInsets.fromLTRB(39.h, 10.v, 355.h, 10.v),
            onTap: () {
              onTapIconButton(context);
            }));
  }

  /// Section Widget
  Widget _buildFortyThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 42.v);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return FortythreeItemWidget();
            }));
  }

  /// Navigates to the iphone1415ProMaxTwentytwoScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwentytwoScreen);
  }
}
