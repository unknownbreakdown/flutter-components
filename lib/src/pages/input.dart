import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => new _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _buildInput(),
          Divider(),
          _buildPerson(),
        ],
      ),
    );
  }

  Widget _buildInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Enter your name",
          labelText: "Name",
          helperText: "Enter just your name",
          prefixIcon: Icon(Icons.account_circle),
          counter: Text("${_name.length} letters")),
      onChanged: (value) {
        _name = value;
        setState(() {});
        print(_name);
      },
    );
  }

  Widget _buildPerson() {
    return ListTile(
      title: Text("Person's name: $_name"),
    );
  }
}
