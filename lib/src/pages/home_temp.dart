import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temporal Home Page"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("ListTile Title"),
          ),
          Divider(),
          ListTile(
            title: Text("ListTile Title"),
          ),
          Divider(),
          ListTile(
            title: Text("ListTile Title"),
          ),
        ],
      ),
    );
  }
}
