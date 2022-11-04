import 'package:flutter/material.dart';
import 'package:decacrypt/utils/size_config.dart';

class BackgroundImg extends StatelessWidget {
  BackgroundImg({super.key, Widget? childWidget});

  @override
  Widget build(BuildContext context) {
    Widget? childWidget;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: SizeConfig.deviceHeight,
            width: SizeConfig.deviceWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bggg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: childWidget,
          ),
        ],
      ),
    );
  }
}
