import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          child: Text("Show alert"),
          onPressed: () {
            return _showAlert(context);
          },
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          title: Text("Title"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Alert description"),
              FlutterLogo(
                size: 50.0,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("Cancel"),
              onPressed: () {
                return Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text("Ok"),
              onPressed: () {
                return Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
