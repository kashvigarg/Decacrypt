import 'package:decacrypt/themes/text_styles.dart';
import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class WorkingScreen extends StatelessWidget {
  const WorkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _customContainer(label: "ENCODE"),
                  _customContainer(label: "VIEW CIPHER")
                ],
              ),
              _customCipher()
            ],
          ),
        ),
      ),
    );
  }
}

Widget _customContainer({required String label}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        label,
        style: TextStyles.h1,
      ),
      SizedBox(
        height: SizeConfig.deviceHeight! * 2,
      ),
      Container(
        height: SizeConfig.deviceHeight! * 30,
        width: SizeConfig.deviceWidth! * 30,
        decoration: BoxDecoration(
            color: Color(0xffb19cdb), borderRadius: BorderRadius.circular(30)),
      )
    ],
  );
}

Widget _customCipher() {
  return CircleAvatar(
    minRadius: SizeConfig.deviceHeight! * 28,
    backgroundColor: Colors.white,
  );
}
