import 'dart:ui';

import 'package:decacrypt/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class CustomTriangle extends StatefulWidget {
  const CustomTriangle({super.key});

  @override
  State<CustomTriangle> createState() => _CustomTriangleState();
}

class _CustomTriangleState extends State<CustomTriangle> {
  // AnimationController _controller = new AnimationController(vsync: TickerProvider. );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 200,
      width: 200,
      child: CustomPaint(
        painter: TrianglePainter(),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xff4B0082)
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width * 1 / 2, size.height * 1 / 8);
    path.lineTo(size.width * 2 / 6, size.height * 3 / 4);
    path.lineTo(size.width * 1 / 2, size.height * 1);
    path.lineTo(size.width * 4 / 6, size.height * 3 / 4);
    // path.moveTo(size.width * 1 / 6, size.height * 3 / 4);
    // path.lineTo(size.width * 5 / 6, size.height * 3 / 4);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
