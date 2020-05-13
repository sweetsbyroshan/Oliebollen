import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button_type.dart';

class SecondaryButton extends StatefulWidget {
  final String text;
  final ButtonType type;
  final IconData icon;
  SecondaryButton({@required this.type, this.text, this.icon});
  @override
  _SecondaryButtonState createState() => _SecondaryButtonState();
}

Color color = Color(0xFF383838);
var border = Border.all(color: Colors.white, width: 2);
bool isActive = false;

class _SecondaryButtonState extends State<SecondaryButton> {
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
          color = Color(0xFF383838);
        });
      },
      onTapDown: (d) {
        setState(() {
          color = Color(0xFF4C4C4C);
          isActive = true;
        });
      },
      onLongPress: () {
        setState(() {
          color = Color(0xFF4C4C4C);
          isActive = true;
        });
      },
      onLongPressEnd: (d) {
        setState(() {
          color = Color(0xFF383838);
          isActive = false;
        });
      },
      onTapUp: (d) {
        setState(() {
          color = Color(0xFF383838);
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
                        .copyWith(color: Colors.white, fontSize: 14),
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
          color = Color(0xFF383838);
        });
      },
      onTapDown: (d) {
        setState(() {
          color = Color(0xFF4C4C4C);
          isActive = true;
        });
      },
      onLongPress: () {
        setState(() {
          color = Color(0xFF4C4C4C);
          isActive = true;
        });
      },
      onLongPressEnd: (d) {
        setState(() {
          color = Color(0xFF383838);
          isActive = false;
        });
      },
      onTapUp: (d) {
        setState(() {
          color = Color(0xFF383838);
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
                            .copyWith(color: Colors.white, fontSize: 14),
                      ),
                      Icon(
                        widget.icon,
                        size: 16,
                        color: Colors.white,
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
          color = Color(0xFF383838);
        });
      },
      onTapDown: (d) {
        setState(() {
          color = Color(0xFF4C4C4C);
          isActive = true;
        });
      },
      onLongPress: () {
        setState(() {
          color = Color(0xFF4C4C4C);
          isActive = true;
        });
      },
      onLongPressEnd: (d) {
        setState(() {
          color = Color(0xFF383838);
          isActive = false;
        });
      },
      onTapUp: (d) {
        setState(() {
          color = Color(0xFF383838);
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
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(16)),
            ),
          )),
    );
  }
}
