import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.deepOrangeAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    _width += 20;
    _height += 20;
    _color = Colors.blue;
    _borderRadius = BorderRadius.circular(20);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          //  color: Colors.blue, //no se puede tener color y decoration al mismo tiempo
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_arrow_sharp,
          size: 40,
        ),
        onPressed: () {
          changeShape();
        },
      ),
    );
  }
}
