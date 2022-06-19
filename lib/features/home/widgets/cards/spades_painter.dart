import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
/*CustomPaint(
size: Size(WIDTH, (WIDTH*0.85).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
)*/

/// Spades
class SpadesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(
      size.width * 0.08910875,
      size.height * 0.4172985,
    );
    path_0.cubicTo(
      size.width * -0.01417663,
      size.height * 0.5656353,
      size.width * -0.03866337,
      size.height * 0.7726176,
      size.width * 0.07462763,
      size.height * 0.9081676,
    );
    path_0.cubicTo(
      size.width * 0.1970725,
      size.height * 1.054669,
      size.width * 0.3834275,
      size.height * 1.012216,
      size.width * 0.4964950,
      size.height * 0.8769324,
    );
    path_0.cubicTo(
      size.width * 0.6095650,
      size.height * 1.012213,
      size.width * 0.7959162,
      size.height * 1.054671,
      size.width * 0.9183625,
      size.height * 0.9081676,
    );
    path_0.cubicTo(
      size.width * 1.031654,
      size.height * 0.7726176,
      size.width * 1.007167,
      size.height * 0.5656353,
      size.width * 0.9038825,
      size.height * 0.4172985,
    );
    path_0.cubicTo(
      size.width * 0.7923488,
      size.height * 0.2571176,
      size.width * 0.6396525,
      size.height * 0.1194894,
      size.width * 0.4964950,
      size.height * 0.0001374413,
    );
    path_0.cubicTo(
      size.width * 0.3533387,
      size.height * 0.1194897,
      size.width * 0.2006413,
      size.height * 0.2571162,
      size.width * 0.08910875,
      size.height * 0.4172985,
    );
    path_0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = const Color(0xff2C2C2C).withOpacity(1.0);
    canvas.drawPath(path_0, paint0fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
