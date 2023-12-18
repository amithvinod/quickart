import 'package:flutter/material.dart';

class Constansts {
  static double screenHeight = 852;
  static double screenWidth = 393;
  void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }

  double rHeight(double inputH) {
    return (Constansts.screenHeight / 852) * inputH;
  }
  double rWidth(double inputW) {
    return (Constansts.screenWidth / 393) * inputW;
  }
}
