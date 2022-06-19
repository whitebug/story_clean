//Add this CustomPaint widget to the Widget Tree
/*CustomPaint(
size: Size(WIDTH, (WIDTH*0.85).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
)*/

//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/material.dart';

/// Hearts
class HeartsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.08910875, size.height * 0.5827015);
    path_0.cubicTo(
      size.width * -0.01417663,
      size.height * 0.4343647,
      size.width * -0.03866337,
      size.height * 0.2273824,
      size.width * 0.07462763,
      size.height * 0.09183265,
    );
    path_0.cubicTo(
      size.width * 0.1970725,
      size.height * -0.05466941,
      size.width * 0.3834275,
      size.height * -0.01221576,
      size.width * 0.4964950,
      size.height * 0.1230672,
    );
    path_0.cubicTo(
      size.width * 0.6095650,
      size.height * -0.01221322,
      size.width * 0.7959162,
      size.height * -0.05467118,
      size.width * 0.9183625,
      size.height * 0.09183265,
    );
    path_0.cubicTo(
      size.width * 1.031654,
      size.height * 0.2273824,
      size.width * 1.007167,
      size.height * 0.4343647,
      size.width * 0.9038825,
      size.height * 0.5827015,
    );
    path_0.cubicTo(
      size.width * 0.7923488,
      size.height * 0.7428824,
      size.width * 0.6396525,
      size.height * 0.8805103,
      size.width * 0.4964950,
      size.height * 0.9998632,
    );
    path_0.cubicTo(
      size.width * 0.3533387,
      size.height * 0.8805103,
      size.width * 0.2006413,
      size.height * 0.7428838,
      size.width * 0.08910875,
      size.height * 0.5827015,
    );
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
