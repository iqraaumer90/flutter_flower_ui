import 'package:flutter/material.dart';

class FlowerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double scale = size.width / 200;

    // PETALS
    final petalPaint = Paint()
      ..color = const Color(0xFFF4A6B8)
      ..isAntiAlias = true;

    canvas.drawCircle(
      Offset(size.width * 0.5, size.height * 0.27),
      43 * scale,
      petalPaint,
    );

    canvas.drawCircle(
      Offset(size.width * 0.18, size.height * 0.5),
      43 * scale,
      petalPaint,
    );

    canvas.drawCircle(
      Offset(size.width * 0.82, size.height * 0.5),
      43 * scale,
      petalPaint,
    );

    canvas.drawCircle(
      Offset(size.width * 0.5, size.height * 0.73),
      43 * scale,
      petalPaint,
    );

    // CENTER
    final centerPaint = Paint()
      ..color = const Color(0xFFFFE83D)
      ..isAntiAlias = true;

    canvas.drawCircle(
      Offset(size.width * 0.5, size.height * 0.5),
      40 * scale,
      centerPaint,
    );

    // STEM
    final stemPaint = Paint()
      ..color = const Color(0xFF4CAF50)
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(size.width * 0.5, size.height * 0.87),
      Offset(size.width * 0.5, size.height * 1.2),
      stemPaint,
    );

    // LEAVES
    final leafPaint = Paint()
      ..color = const Color(0xFF4CAF50)
      ..style = PaintingStyle.fill;

    // LEFT LEAF...
    Path leftLeaf = Path();

    leftLeaf.moveTo(size.width * 0.5, size.height * 0.95);

    leftLeaf.quadraticBezierTo(
      size.width * 0.30,
      size.height * 0.87,
      size.width * 0.15,
      size.height * 0.93,
    );

    leftLeaf.quadraticBezierTo(
      size.width * 0.30,
      size.height * 1.01,
      size.width * 0.5,
      size.height * 0.95,
    );

    canvas.drawPath(leftLeaf, leafPaint);
    // RIGHT LEAF...
    Path rightLeaf = Path();

    rightLeaf.moveTo(size.width * 0.5, size.height * 1.01);

    rightLeaf.quadraticBezierTo(
      size.width * 0.70,
      size.height * 0.95,
      size.width * 0.85,
      size.height * 1.01,
    );

    rightLeaf.quadraticBezierTo(
      size.width * 0.70,
      size.height * 1.07,
      size.width * 0.5,
      size.height * 1.01,
    );

    canvas.drawPath(rightLeaf, leafPaint);
  }

  @override
  bool shouldRepaint(covariant FlowerPainter oldDelegate) {
    return false;
  }
}
