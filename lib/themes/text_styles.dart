import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/material.dart';

extension AdaptiveSize on num {
  double get adjustSize =>
      ((SizeConfig.deviceHeight! * SizeConfig.deviveWidth!) / (1920 * 1080)) *
      this *
      100 *
      100;
}

class TextStyles {
  static TextStyle get h1 => TextStyle(
        fontSize: 20.adjustSize,
        fontWeight: FontWeight.bold,
        color: Color(0x76F34C41),
      );
}
