import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleDemo extends StatefulWidget {
  const AnimatedDefaultTextStyleDemo({super.key});

  @override
  State<AnimatedDefaultTextStyleDemo> createState() => _AnimatedDefaultTextStyleDemoState();
}

class _AnimatedDefaultTextStyleDemoState extends State<AnimatedDefaultTextStyleDemo> {
  double fontSize=28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            fontSize=15;
          });
        },
        label: const Text("Change"),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animated Opacity Demo"),
      ),
      body: Center(
        child: Card(
          child: Container(alignment: Alignment.center,
            width: 200,
            height: 200,
            child: AnimatedDefaultTextStyle(
              curve: Curves.elasticOut,
              textAlign: TextAlign.center,
              child: Text("Hello !!"),
              style: TextStyle(fontSize: fontSize,color: Colors.black),
              duration: Duration(seconds: 2),
            ),
          ),
        ),
      ),
    );
  }
}
