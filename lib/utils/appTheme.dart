import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final color = _color();
  static final asset = _Asset();
  static final assetSvg = _AssetSvg();
}

class _color {
  final primaryColor = Color(0xFF232222);
  final secondaryColor = Color(0xFFF5F5F5);
  final redColors = Color(0xffF90808);
  final textColor = Color(0xFF232222);
  final backgroundTextField = Color(0xFFF5F5F5);
  final backgroundTextField2 = Color(0XFFFCF3F6);
  final backgroundTextFieldBordu = Color(0XFFA8A8A9);
  final whithColor = Color(0xFFFFFFFF);
}

class _Asset {
  final logo = "assets/Kub_Logo_HD_03.png";
  final logo2 = "assets/Kub_Logo_HD_04.png";
  final logo3 = "assets/Kub_Logo_HD_08.png";
  final logo4 = "assets/Kube_logo_white_04.png";
  final car = "assets/car.png";
  final google = "assets/google.png";
  final apple = "assets/apple.png";
  final facebook = "assets/facebook.png";
}

class _AssetSvg {}
