import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> _stringList = ["one", "two", "three"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temporal Home Page"),
      ),
      body: ListView(
        children: _createWidgetItems(),
      ),
    );
  }

  List<Widget> _createWidgetItems() {
    List<Widget> widgetList = List<Widget>();

    for (String item in _stringList) {
      widgetList..add(
        ListTile(
          title: Text(item),
        ),
      )..add(Divider());
    }

    return widgetList;
  }
}
