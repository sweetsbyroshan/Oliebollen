import 'package:flutter/material.dart';
import 'package:oliebollen/widgets/loader.dart';

class LoaderPage extends StatefulWidget {
  static const routeName = 'loaderPage';
  @override
  _LoaderPageState createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loader'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Loader(type: LoaderType.Large,),
            Loader()
          ],
        ),
      ),
    );
  }
}
