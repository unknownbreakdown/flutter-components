import 'package:flutter/material.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _buildListItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _buildListItems(List<dynamic> data) {
    List<Widget> widgetList = [];

    data.forEach((item) {
      Widget tempWidget = ListTile(
        title: Text(item['texto']),
        leading: Icon(
          Icons.account_circle,
          color: Colors.blue,
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {},
      );
      widgetList..add(tempWidget)..add(Divider());
    });

    return widgetList;
  }
}
