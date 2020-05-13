import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDown extends StatefulWidget {
  final List<String> list;
  final String hint;
  final String label;

  const DropDown(
      {Key key, @required this.list, @required this.hint, @required this.label})
      : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String _hint;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _hint = widget.hint;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(widget.label,
            style: GoogleFonts.ibmPlexSans()
                .copyWith(fontSize: 12, color: Color(0xFF525252))),
        SizedBox(
          height: 4,
        ),
        DropdownButton<String>(
          items: widget.list.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      value,
                      style: GoogleFonts.ibmPlexSans()
                          .copyWith(fontSize: 14, color: Color(0xFF525252)),
                    ),
                    constraints: BoxConstraints(minWidth: 224),
                  ),
                ],
              ),
            );
          }).toList(),
          focusColor: Color(0xFF0F61FD),
          hint: Container(
            padding: EdgeInsets.all(8),
            child: Text(
              _hint,
              style: GoogleFonts.ibmPlexSans()
                  .copyWith(fontSize: 14, color: Color(0xFF525252)),
            ),
            constraints: BoxConstraints(minWidth: 224),
            decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
            ),
          ),
          dropdownColor: Color(0xFFF3F3F3),
          onChanged: (_) {
            setState(() {
              _hint = _;
            });
          },
        ),
      ],
    );
  }
}
