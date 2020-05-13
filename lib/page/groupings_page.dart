import 'package:flutter/material.dart';
import 'package:oliebollen/widgets/groupings.dart';

class GroupingsPage extends StatefulWidget {
  static const routeName = 'groupingsPage';
  @override
  _GroupingsPageState createState() => _GroupingsPageState();
}

class _GroupingsPageState extends State<GroupingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Groupings'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Groupings(
              data: [
                'Left Item',
                'Middle Section',
                'Middle Section',
                'Right Item'
              ],
              onSwitch: (current) {
                print(current);
              },
            )
          ],
        ),
      ),
    );
  }
}
