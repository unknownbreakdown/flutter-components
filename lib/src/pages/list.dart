import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => new _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _numbers = List();
  int _lastItem = 0;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _addItems();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _addItems();
      }
    });
  }

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
      controller: _scrollController,
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

  void _addItems() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _numbers.add(_lastItem);
    }

    setState(() {});
  }
}
