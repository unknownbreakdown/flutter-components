import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Components App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Components'),
        ),
        body: HomePageTemp(),
      ),
    );
  }
}