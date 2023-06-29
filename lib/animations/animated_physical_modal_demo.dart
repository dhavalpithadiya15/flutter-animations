import 'package:flutter/material.dart';

class AnimatedPhysicalModalDemo extends StatefulWidget {
  const AnimatedPhysicalModalDemo({super.key});

  @override
  State<AnimatedPhysicalModalDemo> createState() => _AnimatedPhysicalModalDemoState();
}

class _AnimatedPhysicalModalDemoState extends State<AnimatedPhysicalModalDemo> {
  bool isFlat = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            isFlat = !isFlat;
          });
        },
        label: const Text("Change"),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animated Physical Modal Demo"),
      ),
      body: Center(
        child: AnimatedPhysicalModel(

          curve: Curves.linear,
          elevation: isFlat?5.0:0.0,
          color: Colors.white,
          shadowColor: Colors.blueAccent,
          duration: const Duration(seconds: 3),
          shape: BoxShape.rectangle,
          child: Container(
            height: 200,
            width: 200,
          ),
        )
      ),
    );
  }
}
