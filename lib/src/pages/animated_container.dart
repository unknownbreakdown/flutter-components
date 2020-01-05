import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() =>
      new _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          _alterContainer();
        },
      ),
    );
  }

  void _alterContainer() {
    Random random = Random();
    _width = random.nextInt(300).toDouble() + 1;
    _height = random.nextInt(300).toDouble() + 1;
    _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), random.nextDouble());
    _borderRadius = BorderRadius.circular(random.nextInt(101).toDouble());
    setState(() {});
  }
}
