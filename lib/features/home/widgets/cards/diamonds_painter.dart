import 'package:flutter/material.dart';

/// Diamonds
class DiamondsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4981414, size.height * 0.9913971);
    path_0.lineTo(0, size.height * 0.4964059);
    path_0.lineTo(size.width * 0.4981414, 0);
    path_0.lineTo(size.width * 0.9962810, size.height * 0.4964059);
    path_0.lineTo(size.width * 0.4981414, size.height * 0.9913971);
    path_0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = const Color(0xffF24E1E).withOpacity(1.0);
    canvas.drawPath(path_0, paint0fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
