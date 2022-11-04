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
        fontSize: 20.adjustSize,
        fontFamily: 'ChakraPetch',
        color: Color.fromARGB(255, 238, 234, 232),
      );
}
