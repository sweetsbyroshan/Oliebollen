import 'package:flutter/material.dart';
import 'package:oliebollen/widgets/switch.dart';

class SwitchPage extends StatefulWidget {
  static const routeName = 'switchPage';
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CDSwitch'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CDSwitch(
              onChanged: (bool b) {
                setState(() {
                  active = b;
                });
              },
              value: active,
            )
          ],
        ),
      ),
    );
  }
}
