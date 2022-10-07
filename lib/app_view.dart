import 'package:decacrypt/constants/app_strings.dart';
import 'package:decacrypt/constants/background.dart';
import 'package:decacrypt/themes/text_styles.dart';
import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImg(),
      SafeArea(
        child: Scrollbar(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(AppStrings.title,
                    style: TextStyle(color: Colors.black, fontSize: 30)
                    // style: TextStyles.h1.copyWith(
                    //   fontSize: 20.adjustSize,
                    //   color: Color(0x76F34C41),
                    ),
                Container(
                  color: Colors.white,
                  height: 300,
                  width: 600,
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
