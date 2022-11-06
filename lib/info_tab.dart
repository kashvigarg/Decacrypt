import 'package:decacrypt/themes/text_styles.dart';
import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            "Cipher-Shift",
            textScaleFactor: 2.5,
            style: TextStyles.h1,
          ),
          SizedBox(
            width: SizeConfig.deviceWidth! * 2,
          ),
          Icon(
            Icons.info,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
