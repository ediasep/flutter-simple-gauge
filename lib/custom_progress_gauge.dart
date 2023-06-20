import 'package:my_simple_gauge/custom_progress_painter.dart';
import 'package:flutter/material.dart';

class CustomProgressGauge extends StatelessWidget {
  const CustomProgressGauge({super.key, this.progress = 0});
  final num progress;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomProgressPainter(progress),
      child: SizedBox(
        height: 450,
        child: Center(
          child: Text("$progress%",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
