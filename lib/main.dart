import 'package:animation/animations/animate_default_text_demo.dart';
import 'package:animation/animations/animated_align_demo.dart';
import 'package:animation/animations/animated_container_demo.dart';
import 'package:animation/animations/animated_opacity_demo.dart';
import 'package:animation/animations/animated_positioned_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animations/animated_physical_modal_demo.dart';
import 'animations/animated_size_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list = [
    "Animated Container",
    "Animated Opacity",
    "Animated Positioned",
    "Align Animations",
    "Animated Physical Modal",
    "Animated Size",
    "Animated Default TextStyle",
    "Animated Padding",
    "Animated Position Directional"
  ];

  List<Widget> screens = [
    const AnimatedContainerDemo(),
    const AnimatedOpacityDemo(),
    const AnimatedPositionedDemo(),
    const AnimatedAlignDemo(),
    const AnimatedPhysicalModalDemo(),
    const AnimatedSizeDemo(),
    const AnimatedDefaultTextStyleDemo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations"),
      ),
      body: GridView.builder(
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => screens[index]));
            },
            child: Card(
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  list[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
