import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _buildCardType1(),
          SizedBox(height: 10.0),
          _buildCardType2(),
        ],
      ),
    );
  }

  Widget _buildCardType1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Card Title"),
            subtitle: Text("Card subtitle"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildCardType2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('images/loading.gif'),
            image: NetworkImage(
                'https://pro2-bar-s3-cdn-cf5.myportfolio.com/f1b116d8e4a1395c6304122d31ec59fb/601b545a-778a-4222-8949-5535a3d9ee36_rw_1920.jpg?h=08ded2642ba54a3d2556d5e30075c0ba'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Sample description text"),
          )
        ],
      ),
    );
  }
}
