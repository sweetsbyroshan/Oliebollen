import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final String label;
  InputField({this.label});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: GoogleFonts.ibmPlexSans(fontSize: 12),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            constraints: BoxConstraints(minWidth: 100),
            color: Color(0xFFF3F3F3),
            child: TextField(
              decoration: InputDecoration(border: UnderlineInputBorder()),
              style: GoogleFonts.ibmPlexMono(fontSize: 14),
              
            ),
          )
        ],
      ),
    );
  }
}
