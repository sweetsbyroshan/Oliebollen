import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CDSwitch extends StatefulWidget {
  final Function onChanged;
  final bool value;
  CDSwitch({Key key, this.onChanged(bool b), this.value}) : super(key: key);
  @override
  _CDSwitchState createState() => _CDSwitchState();
}

class _CDSwitchState extends State<CDSwitch> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      activeColor: Color(0xFF24A047),
      onChanged: (bool value) {
        widget.onChanged(value);
      },
      value: widget.value,
    );
  }
}
