import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => new _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = "";
  String _email = "";
  String _password = "";
  TextEditingController _dateInputController = TextEditingController();
  List<String> _dropdownOptions = ['Fly', 'Swim', 'Run'];
  String _selectedDropdownOption = 'Fly';


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _buildTextInput(),
          Divider(),
          _buildEmailInput(),
          Divider(),
          _buildPasswordInput(),
          Divider(),
          _buildDateInput(context),
          Divider(),
          _buildDropdownInput(),
          Divider(),
          _buildPersonData(),
        ],
      ),
    );
  }

  Widget _buildTextInput() {
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

  _buildEmailInput() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Enter your email",
          labelText: "Email",
          helperText: "Enter a valid email",
          prefixIcon: Icon(Icons.alternate_email),
          counter: Text("${_name.length} letters")),
      onChanged: (value) {
        _email = value;
        setState(() {});
        print(_email);
      },
    );
  }

  _buildPasswordInput() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Enter your password",
          labelText: "Password",
          helperText: "Enter letters, digits and symbols",
          prefixIcon: Icon(Icons.lock),
          counter: Text("${_name.length} letters")),
      onChanged: (value) {
        _password = value;
        print(_password);
      },
    );
  }

  Widget _buildDateInput(BuildContext contex) {
    return TextField(
        enableInteractiveSelection: false,
        controller: _dateInputController,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintText: "Enter your birth date",
            labelText: "Birth date",
            helperText: "...",
            prefixIcon: Icon(Icons.calendar_today),
            counter: Text("${_name.length} letters")),
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        });
  }

  void _selectDate(BuildContext context) async {
    DateTime pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2017),
      lastDate: DateTime(2023),
    );

    if (pickedDate != null) {
      _dateInputController.text = pickedDate.toString();
    }
  }

  List<DropdownMenuItem<String>>_buidlDropdownItems () {
    List<DropdownMenuItem<String>> dropdownList = List();

    _dropdownOptions.forEach((power) {
      dropdownList.add(DropdownMenuItem(
        child: Text(power),
        value: power,
      ));
    });

    return dropdownList;
  }

  _buildDropdownInput() {
    return DropdownButton(
      value: _selectedDropdownOption,
      items: _buidlDropdownItems(),
      onChanged: (option) {
        setState(() {
          _selectedDropdownOption = option;       
                });
      },
    );
  }

  Widget _buildPersonData() {
    return ListTile(
      title: Text("Name: $_name"),
      subtitle: Text("Email: $_email"),
    );
  }
}
