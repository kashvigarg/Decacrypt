import 'package:decacrypt/constants/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CaesarView extends StatelessWidget {
  const CaesarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(AppStrings.cipher1),
    );
  }
}
