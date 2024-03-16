import 'package:traffic_solution/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:traffic_solution/core/app_export.dart';

class Iphone1415ProMaxTwentytwoScreen extends StatelessWidget {
  const Iphone1415ProMaxTwentytwoScreen({Key? key}) : super(key: key);

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
                    color: theme.colorScheme.onPrimaryContainer,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgIphone1415Pro),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 11.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 48.v),
                      _buildTraffiSolutionBD(context),
                      SizedBox(height: 60.v),
                      SizedBox(
                          height: 30.v,
                          width: 243.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 25.v,
                                    width: 110.h,
                                    margin: EdgeInsets.only(left: 62.h),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("Live Traffic  ",
                                                  style: theme
                                                      .textTheme.titleLarge)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text("Live Traffic  ",
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ]))),
                            _buildLiveTraffic(context)
                          ])),
                      SizedBox(height: 31.v),
                      _buildTravelTool(context),
                      SizedBox(height: 31.v),
                      _buildOptions(context),
                      SizedBox(height: 84.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgTrafficJamPicture2,
                          height: 232.adaptSize,
                          width: 232.adaptSize),
                      Spacer(),
                      _buildAd(context),
                      SizedBox(height: 27.v),
                      Text("                  Company name, rights reserved",
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 35.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 192.h),
                              child: Text("2/15",
                                  style: theme.textTheme.bodySmall)))
                    ])))));
  }

  /// Section Widget
  Widget _buildTraffiSolutionBD(BuildContext context) {
    return CustomElevatedButton(
        height: 53.v,
        text: "TraffiSolutionBD",
        margin: EdgeInsets.only(left: 33.h, right: 22.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 30.h),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(17.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: 35.adaptSize,
                width: 35.adaptSize)),
        buttonStyle: CustomButtonStyles.fillRedA,
        buttonTextStyle: theme.textTheme.headlineSmall!,
        onPressed: () {
          onTapTraffiSolutionBD(context);
        });
  }

  /// Section Widget
  Widget _buildLiveTraffic(BuildContext context) {
    return CustomElevatedButton(
        width: 243.h,
        text: "Live Traffic  ",
        onPressed: () {
          onTapLiveTraffic(context);
        },
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildTravelTool(BuildContext context) {
    return CustomElevatedButton(width: 243.h, text: "Travel Tool");
  }

  /// Section Widget
  Widget _buildOptions(BuildContext context) {
    return CustomElevatedButton(width: 243.h, text: "Options");
  }

  /// Section Widget
  Widget _buildAd(BuildContext context) {
    return CustomElevatedButton(
        height: 87.v, text: "Ad", buttonStyle: CustomButtonStyles.fillGray);
  }

  /// Navigates to the iphone1415ProMaxTenScreen when the action is triggered.
  onTapTraffiSolutionBD(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTenScreen);
  }

  /// Navigates to the iphone1415ProMaxElevenScreen when the action is triggered.
  onTapLiveTraffic(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxElevenScreen);
  }
}
