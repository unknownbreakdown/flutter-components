import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => new _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _numbers = [1,2,3,4,5,6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List & Scroll"),
      ),
      body: _buildList(),
    );
  }

  _buildList() {
    return ListView.builder(
      itemCount: _numbers.length,
      itemBuilder: (BuildContext context, int index) {
        int imageNumber = _numbers[index];

        return FadeInImage(
          placeholder: AssetImage('images/loading.gif'),
          image: NetworkImage('https://picsum.photos/id/$imageNumber/500/300'),
        );
      },
    );
  }
}
