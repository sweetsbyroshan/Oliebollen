import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button_type.dart';

class GhostButton extends StatefulWidget {
  final String text;
  final ButtonType type;
  final IconData icon;
  GhostButton({@required this.type, this.text, this.icon});
  @override
  _GhostButtonState createState() => _GhostButtonState();
}

Color color = Colors.transparent;
var border = Border.all(color: Color(0xFF0F61FD), width: 2);
bool isActive = false;

class _GhostButtonState extends State<GhostButton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case ButtonType.With_Icon:
        return secondaryButtonWithIcon(context);
      case ButtonType.Icon:
        return secondaryIconButton(context);
      case ButtonType.Default:
      default:
        return secondaryButton(context);
    }
  }

  Widget secondaryButton(context) {
    return GestureDetector(
      onTapCancel: () {
        setState(() {
          color = Colors.transparent;
        });
      },
      onTapDown: (d) {
        setState(() {
          color = Color(0xFFE5E5E5);
          isActive = true;
        });
      },
      onLongPress: () {
        setState(() {
          color = Color(0xFFE5E5E5);
          isActive = true;
        });
      },
      onLongPressEnd: (d) {
        setState(() {
          color = Colors.transparent;
          isActive = false;
        });
      },
      onTapUp: (d) {
        setState(() {
          color = Colors.transparent;
          isActive = false;
        });
      },
      child: Container(
          color: color,
          margin: EdgeInsets.all(8),
          alignment: Alignment.topLeft,
          constraints: BoxConstraints(minWidth: 178, minHeight: 48),
          child: Center(
            child: Container(
              decoration: BoxDecoration(border: isActive ? border : null),
              width: MediaQuery.of(context).size.width - 2,
              child: Padding(
                  child: Text(
                    widget.text,
                    style: GoogleFonts.ibmPlexSans()
                        .copyWith(color: Color(0xFF0F61FD), fontSize: 14),
                  ),
                  padding: EdgeInsets.all(16)),
            ),
          )),
    );
  }

  Widget secondaryButtonWithIcon(context) {
    return GestureDetector(
      onTapCancel: () {
        setState(() {
          color = Colors.transparent;
        });
      },
      onTapDown: (d) {
        setState(() {
          color = Color(0xFFE5E5E5);
          isActive = true;
        });
      },
      onLongPress: () {
        setState(() {
          color = Color(0xFFE5E5E5);
          isActive = true;
        });
      },
      onLongPressEnd: (d) {
        setState(() {
          color = Colors.transparent;
          isActive = false;
        });
      },
      onTapUp: (d) {
        setState(() {
          color = Colors.transparent;
          isActive = false;
        });
      },
      child: Container(
          color: color,
          margin: EdgeInsets.all(8),
          alignment: Alignment.topLeft,
          constraints: BoxConstraints(minWidth: 178, minHeight: 48),
          child: Center(
            child: Container(
              decoration: BoxDecoration(border: isActive ? border : null),
              width: MediaQuery.of(context).size.width - 2,
              child: Padding(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.text,
                        style: GoogleFonts.ibmPlexSans()
                            .copyWith(color: Color(0xFF0F61FD), fontSize: 14),
                      ),
                      Icon(
                        widget.icon,
                        size: 16,
                        color: Color(0xFF0F61FD),
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(16)),
            ),
          )),
    );
  }

  Widget secondaryIconButton(context) {
    return GestureDetector(
      onTapCancel: () {
        setState(() {
          color = Colors.transparent;
        });
      },
      onTapDown: (d) {
        setState(() {
          color = Color(0xFFE5E5E5);
          isActive = true;
        });
      },
      onLongPress: () {
        setState(() {
          color = Color(0xFFE5E5E5);
          isActive = true;
        });
      },
      onLongPressEnd: (d) {
        setState(() {
          color = Colors.transparent;
          isActive = false;
        });
      },
      onTapUp: (d) {
        setState(() {
          color = Colors.transparent;
          isActive = false;
        });
      },
      child: Container(
          color: color,
          margin: EdgeInsets.all(8),
          alignment: Alignment.topLeft,
          constraints: BoxConstraints(maxWidth: 48, maxHeight: 48),
          child: Center(
            child: Container(
              decoration: BoxDecoration(border: isActive ? border : null),
              width: MediaQuery.of(context).size.width - 2,
              child: Padding(
                  child: Icon(
                    widget.icon,
                    size: 16,
                    color: Color(0xFF0043CD),
                  ),
                  padding: EdgeInsets.all(16)),
            ),
          )),
    );
  }
}
