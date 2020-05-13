import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckboxItem extends StatefulWidget {
  bool value;
  final String text;
  CheckboxItem({this.value = false, @required this.text});
  @override
  _CheckboxItemState createState() => _CheckboxItemState();
}

class _CheckboxItemState extends State<CheckboxItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.value = !widget.value;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Checkbox(
              checkColor: Color(0xFFFFFFFF),
              focusColor: Color(0xFF0F61FD),
              hoverColor: Color(0xFF0F61FD),
              activeColor: Color(0xFF161616),
              value: widget.value,
              onChanged: (val) {
                setState(() {
                  widget.value = val;
                });
              }),
          SizedBox(
            width: 10,
          ),
          Text(widget.text,
              style: GoogleFonts.ibmPlexSans()
                  .copyWith(fontSize: 14, color: Color(0xFF161616)))
        ],
      ),
    );
  }
}
