import 'package:flutter/material.dart';
import 'package:decacrypt/utils/size_config.dart';

class BackgroundImg extends StatelessWidget {
  BackgroundImg({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bggg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [...children],
      ),
    );
  }
}
