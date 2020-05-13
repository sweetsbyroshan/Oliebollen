import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Groupings extends StatefulWidget {
  final List<String> data;
  final Function onSwitch;
  Groupings({@required this.data, @required this.onSwitch(current)});
  @override
  _GroupingsState createState() => _GroupingsState();
}

class _GroupingsState extends State<Groupings> {
  int selectedPosition = 0;
  var controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          constraints: BoxConstraints(maxHeight: 48),
          child: ListView.builder(
              controller: controller,
              itemCount: widget.data.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return selectedPosition == i
                    ? Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedPosition = i;
                            });
                            controller.animateTo(selectedPosition as double,
                                duration: Duration(milliseconds: 800),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              widget.data[i],
                              style: GoogleFonts.ibmPlexSans().copyWith(
                                  fontSize: 14, color: Color(0xFFF3F3F3)),
                            ),
                            constraints: BoxConstraints(minWidth: 128),
                            decoration: BoxDecoration(
                              color: Color(0xFF161616),
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedPosition = i;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            widget.data[i],
                            style: GoogleFonts.ibmPlexSans().copyWith(
                                fontSize: 14, color: Color(0xFF161616)),
                          ),
                          constraints: BoxConstraints(minWidth: 128),
                          decoration: BoxDecoration(color: Color(0xFFF3F3F3)),
                        ),
                      );
              })),
    );
  }
}
