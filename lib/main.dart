import 'package:my_simple_gauge/custom_progress_gauge.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Simple Gauge'),
        ),
        body: const CustomProgressGauge(progress: 80),
      ),
    );
  }
}
