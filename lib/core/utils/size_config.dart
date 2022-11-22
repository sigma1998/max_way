import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double width = 375;
  static double height = 812;
  static double? screenHeight;
  static double? screenWidth;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
  }

  static double calculateBlockVertical(double size) {
    return (size / height) * screenHeight!;
  }

  static double calculateBlockHorizontal(double size) {
    return (size / width) * screenWidth!;
  }
}