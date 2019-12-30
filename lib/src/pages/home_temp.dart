import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> _stringList = ["One", "Two", "Three"];

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
    return _stringList.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("Sample Subtitle"),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
