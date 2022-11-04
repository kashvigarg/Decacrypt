import 'package:decacrypt/constants/app_strings.dart';
import 'package:decacrypt/constants/background.dart';
import 'package:decacrypt/constants/widgets/animated_triangle.dart';
import 'package:decacrypt/themes/text_styles.dart';
import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(AppStrings.title, textScaleFactor: 3, style: TextStyles.h1),
          SizedBox(
            width: SizeConfig.deviceWidth! * 60,
            child: Text(
              AppStrings.description,
              textAlign: TextAlign.center,
              textScaleFactor: 2,
              softWrap: true,
              style: TextStyles.h2,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: CustomTriangle(),
                onTap: () => GoRouter.of(context).push('/work'),
              ),
              SizedBox(
                height: SizeConfig.deviceHeight! * 3,
              ),
              Center(
                child: Text(
                  "Begin decacrypting",
                  style: TextStyles.h3,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
