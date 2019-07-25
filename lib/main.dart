import 'package:flutter/material.dart';

void main() => runApp(TaleApp());

class TaleApp extends StatefulWidget {
  @override
  _TaleAppState createState() => _TaleAppState();
}

class _TaleAppState extends State<TaleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Localisation Tale',
      theme: ThemeData(),
      home: Center(
        child: Text('**'),
      ),
    );
  }
}
