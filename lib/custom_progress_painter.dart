import 'dart:math';
import 'package:flutter/material.dart';

class CustomProgressPainter extends CustomPainter {
  CustomProgressPainter(this.progress);
  num progress;

  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = size.width / 30.0;
    final circleCenter = Offset(size.width / 2, size.height / 2);
    final circleRadius = (size.width - strokeWidth) / 3;

    final paint = Paint()
      ..color = Colors.black12
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double startAngle = pi / 1.5;
    double sweepAngle = pi / 0.6;

    canvas.drawArc(Rect.fromCircle(center: circleCenter, radius: circleRadius),
        startAngle, sweepAngle, false, paint);

    final arcPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(Rect.fromCircle(center: circleCenter, radius: circleRadius),
        startAngle, (progress / 100) * sweepAngle, false, arcPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
