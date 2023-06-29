import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  bool isAlignBottom = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            isAlignBottom = !isAlignBottom;
          });
        },
        label: const Text("Change"),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animated Align Demo"),
      ),
      body: Center(
        child: Card(
          child: SizedBox(
            height: 200,
            width: 200,
            child: AnimatedAlign(
              curve: Curves.easeInOutCubic,
              alignment: isAlignBottom ? Alignment.bottomRight : Alignment.topLeft,
              duration: const Duration(seconds: 3),
              child: const Text("Hello world"),
            ),
          ),
        ),
      ),
    );
  }
}
