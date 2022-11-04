import 'package:decacrypt/themes/text_styles.dart';
import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/material.dart';

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
                  _customContainer(
                      widget: _dropdownRow(),
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
    onChanged: _code(),
    hint: Text(
      "FUNCTION",
      style: TextStyles.h2,
    ),
  );
}

_code() {}

Widget _customRadioButton() {
  // return Row(
  // children: [
  return RadioListTile(
    value: false,
    groupValue: false,
    onChanged: _code(),
    title: Text("Caesar Cipher"),
  );
  // RadioListTile(
  //   value: false,
  //   groupValue: false,
  //   onChanged: _code(),
  //   title: Text("Vigenere Cipher"),
  // )
  // ],
  // );
}
