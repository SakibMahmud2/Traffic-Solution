import 'package:traffic_solution/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:traffic_solution/core/app_export.dart';

// ignore: must_be_immutable
class FortythreeItemWidget extends StatelessWidget {
  const FortythreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.v,
      width: 243.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
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
                    child: Text(
                      "Live Traffic  ",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Live Traffic  ",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildProfileInformation(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileInformation(BuildContext context) {
    return CustomElevatedButton(
      width: 243.h,
      text: "Profile Information  ",
      alignment: Alignment.center,
    );
  }
}
