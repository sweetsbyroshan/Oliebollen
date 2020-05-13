import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button_type.dart';

class PrimaryButton extends StatefulWidget {
  final String text;
  final ButtonType type;
  final ButtonWeight weight;
  final IconData icon;
  final Function onPressed;
  PrimaryButton(
      {@required this.type,
      this.weight = ButtonWeight.Default,
      this.text,
      @required this.onPressed,
      this.icon});
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

Color color = Color(0xFF0F61FD);
var border = Border.all(color: Colors.white, width: 2);
bool isActive = false;
double height;

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.weight) {
      case ButtonWeight.Default:
        height = 48;
        break;
      case ButtonWeight.Medium:
        height = 40;
        break;
      case ButtonWeight.Small:
        height = 32;
        break;
      default:
        height = 48;
    }

    switch (widget.type) {
      case ButtonType.With_Icon:
        return primaryButtonWithIcon(context);
      case ButtonType.Icon:
        return primaryIconButton(context);
      case ButtonType.Default:
      default:
        return primaryButton(context);
    }
  }

  Widget primaryButton(context) {
    return GestureDetector(
      onTapCancel: () {
        setState(() {
          color = Color(0xFF0F61FD);
        });
      },
      onTapDown: (d) {
        setState(() {
          color = Color(0xFF0353E9);
          isActive = true;
        });
      },
      onTap: () {
        setState(() {
          widget.onPressed();
        });
      },
      onLongPress: () {
        setState(() {
          color = Color(0xFF0353E9);
          isActive = true;
        });
      },
      onLongPressEnd: (d) {
        setState(() {
          color = Color(0xFF0F61FD);
          isActive = false;
        });
      },
      onTapUp: (d) {
        setState(() {
          color = Color(0xFF0F61FD);
          isActive = false;
        });
      },
      child: Container(
          color: color,
          alignment: Alignment.topLeft,
          constraints: BoxConstraints(minWidth: 178, minHeight: height),
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

  Widget primaryButtonWithIcon(context) {
    return GestureDetector(
      onTapCancel: () {
        setState(() {
          color = Color(0xFF0F61FD);
        });
      },
      onTapDown: (d) {
        setState(() {
          color = Color(0xFF0353E9);
          isActive = true;
        });
      },
      onLongPress: () {
        setState(() {
          color = Color(0xFF0353E9);
          isActive = true;
        });
      },
      onLongPressEnd: (d) {
        setState(() {
          color = Color(0xFF0F61FD);
          isActive = false;
        });
      },
      onTapUp: (d) {
        setState(() {
          color = Color(0xFF0F61FD);
          isActive = false;
        });
      },
      child: Container(
          color: color,
          alignment: Alignment.topLeft,
          constraints: BoxConstraints(minWidth: 178, minHeight: height),
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

  Widget primaryIconButton(context) {
    return GestureDetector(
      onTapCancel: () {
        setState(() {
          color = Color(0xFF0F61FD);
        });
      },
      onTapDown: (d) {
        setState(() {
          color = Color(0xFF0353E9);
          isActive = true;
        });
      },
      onLongPress: () {
        setState(() {
          color = Color(0xFF0353E9);
          isActive = true;
        });
      },
      onLongPressEnd: (d) {
        setState(() {
          color = Color(0xFF0F61FD);
          isActive = false;
        });
      },
      onTapUp: (d) {
        setState(() {
          color = Color(0xFF0F61FD);
          isActive = false;
        });
      },
      child: Container(
          color: color,
          alignment: Alignment.topLeft,
          constraints: BoxConstraints(maxWidth: height, maxHeight: height),
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
