import 'dart:math';

import 'package:flutter/material.dart';
import './tale_localizations.dart';

class LanguagesPage extends StatelessWidget {
  const LanguagesPage({Key key, this.onLocaleChange, this.onGenerateRandomLanguage})
      : super(key: key);

  final Function onLocaleChange;
  final Function onGenerateRandomLanguage;

  // Function generateRandomLanguage() {
  //   //int randomLangaugeIndex = randomGenrator.nextInt(kAppSupportedLanguageInfos.length);
  //   return onLocaleChange(Locale(kAppSupportedLanguageInfos[0]['LanguageCode']));

  // }

  void changeLanguage(String languageCode) {
    return onLocaleChange(Locale(languageCode));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: Hero(
          tag: '_',
          child: Icon(
            Icons.translate,
            color: Theme.of(context).primaryColor,
            size: 38,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Random',
              style: TextStyle(
                  fontSize: 18, color: Theme.of(context).primaryColor),
            ),
            onPressed: () {
              onGenerateRandomLanguage();
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.5,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          crossAxisCount: 2,
        ),
        itemCount: kAppSupportedLanguageInfos.length,
        itemBuilder: (context, i) => RaisedButton(
            materialTapTargetSize: MaterialTapTargetSize.padded,
            color:
                (true) ? Theme.of(context).primaryColor : Colors.green.shade500,
            child: Center(
              child: Text(
                kAppSupportedLanguageInfos[i]['language'],
                style: TextStyle(color: Colors.white70),
              ),
            ),
            onPressed: () {
              changeLanguage(kAppSupportedLanguageInfos[i]['languageCode']);
              Navigator.pop(context);
            }),
      ),
    );
  }
}
