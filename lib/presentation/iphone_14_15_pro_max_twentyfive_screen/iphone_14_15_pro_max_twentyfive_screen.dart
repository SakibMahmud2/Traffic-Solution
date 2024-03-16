import 'package:traffic_solution/widgets/custom_icon_button.dart';
import 'package:traffic_solution/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:traffic_solution/core/app_export.dart';

class Iphone1415ProMaxTwentyfiveScreen extends StatelessWidget {
  const Iphone1415ProMaxTwentyfiveScreen({Key? key}) : super(key: key);

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
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 39.v),
                      _buildThirtySix(context),
                      Spacer(flex: 36),
                      CustomElevatedButton(
                          height: 78.v,
                          text: " 999",
                          margin: EdgeInsets.only(left: 62.h, right: 41.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 20.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCall,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          buttonStyle:
                              CustomButtonStyles.fillSecondaryContainer,
                          alignment: Alignment.centerRight),
                      SizedBox(height: 69.v),
                      CustomElevatedButton(
                          height: 78.v,
                          text: "app help center",
                          margin: EdgeInsets.only(left: 57.h, right: 46.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 15.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCall,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          buttonStyle:
                              CustomButtonStyles.fillSecondaryContainer),
                      Spacer(flex: 63),
                      Text("9/15", style: theme.textTheme.bodySmall)
                    ])))));
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: CustomIconButton(
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(imagePath: ImageConstant.imgGroup19))),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse135x35,
              height: 35.adaptSize,
              width: 35.adaptSize,
              radius: BorderRadius.circular(17.h),
              onTap: () {
                onTapImgCircleImage(context);
              })
        ]));
  }

  /// Navigates to the iphone1415ProMaxTenScreen when the action is triggered.
  onTapImgCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTenScreen);
  }
}
