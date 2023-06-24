import 'package:my_simple_gauge/custom_progress_painter.dart';
import 'package:flutter/material.dart';

class CustomProgressGauge extends StatefulWidget {
  const CustomProgressGauge({super.key, this.progress = 0});
  final num progress;

  @override
  State<StatefulWidget> createState() => CustomProgressGaugeState();
}

class CustomProgressGaugeState extends State<CustomProgressGauge>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<num> _animation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation =
        Tween<num>(begin: 0, end: widget.progress).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (BuildContext context, Widget? child) {
          return CustomPaint(
            painter: CustomProgressPainter(_animation.value),
            child: SizedBox(
              height: 450,
              child: Center(
                child: Text("${_animation.value.toInt()}%",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          );
        });
  }
}
