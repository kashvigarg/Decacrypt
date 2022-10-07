import 'package:flutter/material.dart';
import 'package:decacrypt/utils/size_config.dart';

class BackgroundImg extends StatelessWidget {
  BackgroundImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: SizeConfig.deviceHeight,
      width: SizeConfig.deviveWidth,
      decoration: const BoxDecoration(
          image: DecorationImage(
        opacity: 0.8,
        image: AssetImage(
          "assets/images/backgroundimg.jpg",
        ),
        fit: BoxFit.cover,
      )),
    ));
  }
}
