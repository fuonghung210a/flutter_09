import 'package:flutter/material.dart';

class ScreenSize {
  final Size _designScreenSize = const Size(375, 812);
  late Size _deviceScreenSize;

  ScreenSize._();
  static final ScreenSize _instance = ScreenSize._();
  factory ScreenSize() => _instance;
  void init(double width, double height) {
    _deviceScreenSize = Size(width, height);
  }

  double scaleWidth(double designNumber) {
    if (designNumber == 0) {
      return designNumber;
    }
    return (designNumber / _designScreenSize.width) * _deviceScreenSize.width;
  }
}

void main() {
  ScreenSize screeen = ScreenSize();

  print(screeen.scaleWidth(2311));
}
