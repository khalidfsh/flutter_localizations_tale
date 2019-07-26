import 'package:flutter/material.dart';

class TaleHomePage extends StatefulWidget {
  TaleHomePage({Key key, this.onLocaleChange}) : super(key: key);

  final Function onLocaleChange;
  _TaleHomePageState createState() => _TaleHomePageState();
}

class _TaleHomePageState extends State<TaleHomePage> {
  void switchLanguage(BuildContext context) {
    if (Localizations.localeOf(context).languageCode == 'en') {
      widget.onLocaleChange(Locale('ar'));
    } else {
      widget.onLocaleChange(Locale('en'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.translate),
          onPressed: () {
            switchLanguage(context);
          },
        ),
      ),
      body: Center(
        child: Text(Localizations.localeOf(context).toLanguageTag()),
      ),
    );
  }
}
