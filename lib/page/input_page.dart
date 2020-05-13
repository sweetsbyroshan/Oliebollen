import 'package:flutter/material.dart';
import 'package:oliebollen/widgets/input.dart';

class InputPage extends StatefulWidget {
  static const routeName = 'inputPage';
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InputField(label: 'Label',)
          ],
        ),
      ),
    );
  }
}
