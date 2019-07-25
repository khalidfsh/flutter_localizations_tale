import 'package:flutter/material.dart';

class TaleHomePage extends StatefulWidget {
  TaleHomePage({Key key}) : super(key: key);

  _TaleHomePageState createState() => _TaleHomePageState();
}

class _TaleHomePageState extends State<TaleHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          Localizations.localeOf(context).languageCode,
        ),
      ),
    );
  }
}
