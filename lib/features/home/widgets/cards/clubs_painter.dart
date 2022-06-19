import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
/*CustomPaint(
size: Size(WIDTH, (WIDTH*0.8488372093023255).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
)*/

/// Club
class ClubsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(
      size.width * 0.7296198,
      size.height * 0.3523863,
    );
    path_0.lineTo(
      size.width * 0.7126395,
      size.height * 0.4274726,
    );
    path_0.lineTo(
      size.width * 0.7784465,
      size.height * 0.4327315,
    );
    path_0.cubicTo(
      size.width * 0.9020663,
      size.height * 0.4426123,
      size.width * 0.9997826,
      size.height * 0.5639562,
      size.width * 0.9997826,
      size.height * 0.7121342,
    );
    path_0.cubicTo(
      size.width * 0.9997826,
      size.height * 0.8668027,
      size.width * 0.8933523,
      size.height * 0.9921877,
      size.width * 0.7620628,
      size.height * 0.9921877,
    );
    path_0.cubicTo(
      size.width * 0.6684965,
      size.height * 0.9921877,
      size.width * 0.5874523,
      size.height * 0.9285123,
      size.width * 0.5486384,
      size.height * 0.8356479,
    );
    path_0.lineTo(
      size.width * 0.4998919,
      size.height * 0.7190164,
    );
    path_0.lineTo(
      size.width * 0.4511442,
      size.height * 0.8356479,
    );
    path_0.cubicTo(
      size.width * 0.4123302,
      size.height * 0.9285123,
      size.width * 0.3312872,
      size.height * 0.9921877,
      size.width * 0.2377198,
      size.height * 0.9921877,
    );
    path_0.cubicTo(
      size.width * 0.1064309,
      size.height * 0.9921877,
      0,
      size.height * 0.8668027,
      0,
      size.height * 0.7121342,
    );
    path_0.cubicTo(
      0,
      size.height * 0.5639562,
      size.width * 0.09771628,
      size.height * 0.4426123,
      size.width * 0.2213360,
      size.height * 0.4327315,
    );
    path_0.lineTo(
      size.width * 0.2871430,
      size.height * 0.4274726,
    );
    path_0.lineTo(
      size.width * 0.2701628,
      size.height * 0.3523863,
    );
    path_0.cubicTo(
      size.width * 0.2649605,
      size.height * 0.3293822,
      size.width * 0.2621709,
      size.height * 0.3051507,
      size.width * 0.2621709,
      size.height * 0.2800534,
    );
    path_0.cubicTo(
      size.width * 0.2621709,
      size.height * 0.1253844,
      size.width * 0.3686023,
      0,
      size.width * 0.4998919,
      0,
    );
    path_0.cubicTo(
      size.width * 0.6311802,
      0,
      size.width * 0.7376116,
      size.height * 0.1253844,
      size.width * 0.7376116,
      size.height * 0.2800534,
    );
    path_0.cubicTo(
      size.width * 0.7376116,
      size.height * 0.3051507,
      size.width * 0.7348233,
      size.height * 0.3293822,
      size.width * 0.7296198,
      size.height * 0.3523863,
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
