import 'package:flutter/material.dart';
import '../presentation/iphone_14_15_pro_max_twentytwo_screen/iphone_14_15_pro_max_twentytwo_screen.dart';
import '../presentation/iphone_14_15_pro_max_twentysix_screen/iphone_14_15_pro_max_twentysix_screen.dart';
import '../presentation/iphone_14_15_pro_max_eleven_screen/iphone_14_15_pro_max_eleven_screen.dart';
import '../presentation/iphone_14_15_pro_max_twentyfive_screen/iphone_14_15_pro_max_twentyfive_screen.dart';
import '../presentation/iphone_14_15_pro_max_ten_screen/iphone_14_15_pro_max_ten_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1415ProMaxTwentytwoScreen =
      '/iphone_14_15_pro_max_twentytwo_screen';

  static const String iphone1415ProMaxTwentysixScreen =
      '/iphone_14_15_pro_max_twentysix_screen';

  static const String iphone1415ProMaxElevenScreen =
      '/iphone_14_15_pro_max_eleven_screen';

  static const String iphone1415ProMaxTwentyfiveScreen =
      '/iphone_14_15_pro_max_twentyfive_screen';

  static const String iphone1415ProMaxTenScreen =
      '/iphone_14_15_pro_max_ten_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProMaxTwentytwoScreen: (context) =>
        Iphone1415ProMaxTwentytwoScreen(),
    iphone1415ProMaxTwentysixScreen: (context) =>
        Iphone1415ProMaxTwentysixScreen(),
    iphone1415ProMaxElevenScreen: (context) => Iphone1415ProMaxElevenScreen(),
    iphone1415ProMaxTwentyfiveScreen: (context) =>
        Iphone1415ProMaxTwentyfiveScreen(),
    iphone1415ProMaxTenScreen: (context) => Iphone1415ProMaxTenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
