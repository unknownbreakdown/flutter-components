import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => new _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _numbers = List();
  int _lastItem = 0;
  ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addItems();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_addItems();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List & Scroll"),
        ),
        body: Stack(
          children: <Widget>[
            _buildList(),
            _buildLoading(),
          ],
        ));
  }

  _buildList() {
    return RefreshIndicator(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _numbers.length,
        itemBuilder: (BuildContext context, int index) {
          int imageNumber = _numbers[index];

          return FadeInImage(
            placeholder: AssetImage('images/loading.gif'),
            image:
                NetworkImage('https://picsum.photos/id/$imageNumber/500/300'),
            height: 220.0,
          );
        },
      ),
      onRefresh: _fetchImagesOnPull,
    );
  }

  void _addItems() {
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _numbers.add(_lastItem);
    }

    setState(() {});
  }

  Future<Null> _fetchData() async {
    _isLoading = true;
    setState(() {});
    Duration duration = Duration(seconds: 3);

    return new Timer(duration, _httpResponse);
  }

  void _httpResponse() {
    _isLoading = false;
    _addItems();
    _scrollController.animateTo(_scrollController.position.pixels + 30,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 300));
  }

  Widget _buildLoading() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Container();
    }
  }

  Future<Null> _fetchImagesOnPull() async {
    Duration duration = Duration(seconds: 3);
    new Timer(duration, () {
      _numbers.clear();
      _lastItem = 0;
      _fetchData();
    });

    return Future.delayed(duration);
  }
}
