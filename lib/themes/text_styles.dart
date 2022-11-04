import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/material.dart';

extension AdaptiveSize on num {
  double get adjustSize =>
      ((SizeConfig.deviceHeight! * SizeConfig.deviceWidth!) / (1920 * 1080)) *
      this *
      100 *
      100;
}

class TextStyles {
  static TextStyle get h1 => TextStyle(
        fontSize: 40.adjustSize,
        fontFamily: 'ChakraPetch',
        color: Color.fromARGB(255, 238, 234, 232),
      );
  static TextStyle get h2 => TextStyle(
        fontSize: 27.adjustSize,
        fontFamily: 'ChakraPetch',
        color: Color.fromARGB(255, 238, 234, 232),
      );
  static TextStyle get h3 => TextStyle(
        fontSize: 22.adjustSize,
        fontFamily: 'ChakraPetch',
        color: Colors.white,
      );
}
