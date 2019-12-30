import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    print(menuProvider.options);

    return ListView(
      children: _listItems(),
    );
  }

  List<Widget> _listItems() {
    return [
      ListTile(
        title: Text("Sample Title"),
      ),
      ListTile(
        title: Text("Sample Title"),
      ),
      ListTile(
        title: Text("Sample Title"),
      ),
    ];
  }
}
