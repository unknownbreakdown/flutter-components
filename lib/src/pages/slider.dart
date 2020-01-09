import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => new _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Slider Page"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _buildSlider(),
            Expanded(
              child: _buildImage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider() {
    return Slider(
      activeColor: Colors.indigo[300],
      label: "Image size",
      //divisions: 10,
      value: _sliderValue,
      min: 10.0,
      max: 300.0,
      onChanged: (value) {
        _sliderValue = value;
        setState(() {});
      },
    );
  }

  Widget _buildImage() {
    return Image(
      image: NetworkImage('https://cdn.cinemascomics.com/wp-content/uploads/2017/04/Eva-Green-como-Catwoman.jpg'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }
}
