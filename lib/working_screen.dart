import 'package:decacrypt/constants/background.dart';
import 'package:decacrypt/info_tab.dart';
import 'package:decacrypt/themes/text_styles.dart';
import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class WorkingScreen extends StatelessWidget {
  const WorkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: BackgroundImg(children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _customContainer(
                        widget: Column(
                          children: [_dropdownRow(), _customRadioBar()],
                        ),
                        textLabel: "Enter/Paste your data"),
                    _customContainer(
                        widget: Text(
                      "VIEW CIPHER",
                      style: TextStyles.h2,
                    ))
                  ],
                ),
                _customCipher()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

Widget _customContainer({required Widget widget, String? textLabel}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      widget,
      SizedBox(
        height: SizeConfig.deviceHeight! * 2,
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(hintText: textLabel),
          ),
        ),
        height: SizeConfig.deviceHeight! * 30,
        width: SizeConfig.deviceWidth! * 30,
        decoration: BoxDecoration(
            color: Color.fromARGB(241, 255, 255, 255),
            borderRadius: BorderRadius.circular(30)),
      )
    ],
  );
}

Widget _customCipher() {
  return Column(
    children: [
      InfoTab(),
    ],

    // CircleAvatar(
    //   minRadius: SizeConfig.deviceHeight! * 28,
    //   backgroundColor: Colors.white,
  );
}

List<DropdownMenuItem<String>> get ciphers {
  List<DropdownMenuItem<String>> ciphers = [
    DropdownMenuItem(child: Text("ENCODE"), value: "ENCODE"),
    DropdownMenuItem(child: Text("DECODE"), value: "DECODE"),
  ];
  return ciphers;
}

Widget _dropdownRow() {
  return DropdownButton(
    items: ciphers,
    // value: ciphers[0],
    onChanged: (newValue) {
      //TODO : add setstate
    },
    hint: Text(
      "FUNCTION",
      style: TextStyles.h2,
    ),
  );
}

_code() {}

Widget _customRadioBar() {
  return Row(
    children: [
      Row(
        children: [
          Radio(
            fillColor: MaterialStateProperty.all(Colors.green),
            value: false,
            groupValue: false,
            onChanged: ((value) => {}),
          ),
          Text(
            "Caesar Cipher",
            style: TextStyles.h3,
          )
        ],
      ),
      Row(
        children: [
          Radio(
            fillColor: MaterialStateProperty.all(Colors.green),
            value: false,
            groupValue: false,
            onChanged: ((value) => {}),
          ),
          Text(
            "Vigenere Cipher",
            style: TextStyles.h3,
          )
        ],
      )
    ],
  );
}
