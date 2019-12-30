import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/home.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Components App',
      home: HomePage(),
    );
  }
}