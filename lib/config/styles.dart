import 'package:flutter/material.dart';
import 'package:test_book/config/config.dart';

abstract class AppStyles {
  static const TextStyle homeTitle = const TextStyle(
    color: ColorPalette.black,
    fontSize: 28.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle seeMore = const TextStyle(
    color: ColorPalette.seeMore,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle buttonText = const TextStyle(
    color: ColorPalette.buttonText,
    fontSize: 12.0,
  );
  static const TextStyle bottomTitle = const TextStyle(
    color: ColorPalette.black,
    fontSize: 28.0,
    fontWeight: FontWeight.w500,
  );

  static final BorderRadiusGeometry buttonRadius = BorderRadius.circular(19.0);
  static const List<Color> buttonGradient = [
    const Color(0xff3e51fa),
    const Color(0xffe71dc0)
  ];
}
