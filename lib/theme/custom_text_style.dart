import 'package:flutter/material.dart';
import 'package:traffic_solution/core/utils/size_utils.dart';
import 'package:traffic_solution/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLight_1 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallff000000 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallff000000Light => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  // Headline text style
  static get headlineLargeErrorContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get headlineLargeSemiBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
