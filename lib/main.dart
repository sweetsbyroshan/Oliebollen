import 'package:flutter/material.dart';

import 'style/colors.dart';
import 'package:oliebollen/widgets/button/button_type.dart';
import 'package:oliebollen/widgets/button/primary_buttons.dart';

import 'page/button_page.dart';
import 'page/checkbox_item_page.dart';
import 'page/input_page.dart';
import 'page/groupings_page.dart';
import 'page/dropdown_page.dart';
import 'page/switch_page.dart';
import 'page/loader_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carbon Design System',
      theme: ThemeData(
        primaryColor: CDSColors.neutralGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Carbon Design System'),
      routes: {
        MyHomePage.routeName: (context) => MyHomePage(),
        ButtonPage.routeName: (context) => ButtonPage(),
        CheckboxItemPage.routeName: (context) => CheckboxItemPage(),
        InputPage.routeName: (context) => InputPage(),
        DropDownPage.routeName: (context) => DropDownPage(),
        SwitchPage.routeName: (context) => SwitchPage(),
        LoaderPage.routeName: (context) => LoaderPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const routeName = 'myHomePage';
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PrimaryButton(
              type: ButtonType.Default,
              text: 'Buttons',
              onPressed: () {
                Navigator.of(context).pushNamed(ButtonPage.routeName);
              },
            ),
            SizedBox(
              height: 8,
            ),
            PrimaryButton(
              type: ButtonType.Default,
              text: 'Checkbox Item',
              onPressed: () {
                Navigator.of(context).pushNamed(CheckboxItemPage.routeName);
              },
            ),
            SizedBox(
              height: 8,
            ),
            PrimaryButton(
              type: ButtonType.Default,
              text: 'Groupings',
              onPressed: () {
                Navigator.of(context).pushNamed(GroupingsPage.routeName);
              },
            ),
            SizedBox(
              height: 8,
            ),
            PrimaryButton(
              type: ButtonType.Default,
              text: 'Input',
              onPressed: () {
                Navigator.of(context).pushNamed(InputPage.routeName);
              },
            ),
            SizedBox(
              height: 8,
            ),
            PrimaryButton(
              type: ButtonType.Default,
              text: 'Dropdown',
              onPressed: () {
                Navigator.of(context).pushNamed(DropDownPage.routeName);
              },
            ),
            SizedBox(
              height: 8,
            ),
            PrimaryButton(
              type: ButtonType.Default,
              text: 'CDSwitch',
              onPressed: () {
                Navigator.of(context).pushNamed(SwitchPage.routeName);
              },
            ),
            SizedBox(
              height: 8,
            ),
            PrimaryButton(
              type: ButtonType.Default,
              text: 'Loader',
              onPressed: () {
                Navigator.of(context).pushNamed(LoaderPage.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
