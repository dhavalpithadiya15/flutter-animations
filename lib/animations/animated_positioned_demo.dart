import 'package:flutter/material.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  const AnimatedPositionedDemo({super.key});

  @override
  State<AnimatedPositionedDemo> createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Animated Positioned Demo"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            showMessage = !showMessage;
          });
        },
        label: const Text("Change"),
      ),
      body: Center(
        child: Card(
          elevation: 3,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text('Hello World', style: Theme.of(context).textTheme.titleMedium),
                AnimatedPositioned(
                  top: showMessage ? 20 : 60,
                  curve: Curves.bounceOut,
                  duration: const Duration(seconds: 3),
                  child: Card(
                    elevation: 3,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 100,
                      child: const Text("Surprise!!"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
