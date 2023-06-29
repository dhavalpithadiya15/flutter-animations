import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double height = 200;
  double width = 200;
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(seconds: 3),
          color: color,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
