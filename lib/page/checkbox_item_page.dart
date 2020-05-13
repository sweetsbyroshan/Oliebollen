import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oliebollen/widgets/checkbox.dart';
import '../style/colors.dart';
import 'package:oliebollen/widgets/button/button_type.dart';
import 'package:oliebollen/widgets/button/primary_buttons.dart';
import 'package:oliebollen/widgets/button/secondary_buttons.dart';
import 'package:oliebollen/widgets/button/ghost_button.dart';

class CheckboxItemPage extends StatefulWidget {
  static const routeName = 'checkboxItemPage';
  @override
  _CheckboxItemPageState createState() => _CheckboxItemPageState();
}

class _CheckboxItemPageState extends State<CheckboxItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxItem'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  ),
                  CheckboxItem(
                    value: false,
                    text: 'Checkbox Item',
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
