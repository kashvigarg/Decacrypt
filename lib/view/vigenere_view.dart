import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/app_strings.dart';

class VigenereView extends StatelessWidget {
  const VigenereView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(AppStrings.cipher2),
    );
  }
}
