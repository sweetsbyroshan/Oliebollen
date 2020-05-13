import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final LoaderType type;
  Loader({this.type});
  @override
  Widget build(BuildContext context) {
    return type == LoaderType.Large
        ? Container(
            color: Color(0x7F8A8A8A),
            width: 88,
            height: 88,
            padding: EdgeInsets.all(8),
            child: CircularProgressIndicator(
              strokeWidth: 8,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF8A8A8A)),
              backgroundColor: Color(0xFF0F61FD),
            ),
          )
        : Container(
            color: Colors.transparent,
            width: 16,
            height: 16,
            child: CircularProgressIndicator(
              strokeWidth: 6,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF8A8A8A)),
              backgroundColor: Color(0xFF0F61FD),
            ),
          );
  }
}

enum LoaderType { Large, Small }
