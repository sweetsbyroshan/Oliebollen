import 'package:flutter/material.dart';
import 'package:oliebollen/widgets/dropdown.dart';

class DropDownPage extends StatefulWidget {
  static const routeName = 'dropDownPage';
  @override
  _DropDownPageState createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            DropDown(
              list: ['Option', 'Option', 'Option'],
              hint: 'Hint',
              label: 'Label',
            )
          ],
        ),
      ),
    );
  }
}
