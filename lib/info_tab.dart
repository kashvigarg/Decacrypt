import 'dart:html';
import 'dart:ui';

import 'package:decacrypt/themes/text_styles.dart';
import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Cipher-Key",
          textScaleFactor: 2.5,
          style: TextStyles.h1,
        ),
        SizedBox(
          width: SizeConfig.deviceWidth! * 2,
        ),
        IconButton(
          icon: const Icon(Icons.info),
          onPressed: () => _displayDialog(context),
          hoverColor: Colors.red,
          color: Colors.white,
        ),
      ],
    );
  }
}

_displayDialog(BuildContext context) {
  showDialog(context: context, builder: InfoBox);
}

Widget InfoBox(BuildContext context) {
  return Dialog(
    child: RichText(
        text: TextSpan(children: [
      TextSpan(text: "A cipher key is "),
      TextSpan(text: "How to encode using a key?"),
      TextSpan(text: "How to decode using a key?"),
      // TextSpan(),
      // TextSpan(),
      // TextSpan(),
      // TextSpan(),
    ])),
    // child: Column(
    //   children: [
    //     Text(""),
    //     Text("How to encode using a cipher shift?"),
    //     Text("How to decode using a cipher shift?"),
    //   ],
    // ),
  );
}

// try paragraph builder
