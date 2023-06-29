import 'package:flutter/material.dart';

class AnimatedSizeDemo extends StatefulWidget {
  const AnimatedSizeDemo({super.key});

  @override
  State<AnimatedSizeDemo> createState() => _AnimatedSizeDemoState();
}

class _AnimatedSizeDemoState extends State<AnimatedSizeDemo> {
  double height = 200;
  double width = 200;
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animated Size Demo"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            height = 100;
            width = 100;
            color = Colors.redAccent;
          });
        },
        label: const Text("Change"),
      ),
      body: AnimatedSize(
        curve: Curves.easeInOut,
        reverseDuration: const Duration(seconds: 1),
        duration: const Duration(seconds: 3),
        child: Container(
          height: height,
          width: width,
          color: color,
        ),
      ),
    );
  }
}
