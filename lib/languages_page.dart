import 'package:flutter/material.dart';
import './tale_localizations.dart';

class LanguagesPage extends StatelessWidget {
  const LanguagesPage(
      {Key key, this.onLocaleChange, this.onGenerateRandomLanguage})
      : super(key: key);

  final Function onGenerateRandomLanguage;
  final Function onLocaleChange;

  void changeLanguage(String languageCode) {
    return onLocaleChange(Locale(languageCode));
  }

  Widget buildLanguagButton(BuildContext context, int index) {
    String _currentLanguageCode = Localizations.localeOf(context).languageCode;
    
    return RaisedButton(
      color: (_currentLanguageCode ==
              kAppSupportedLanguageInfos[index]['languageCode'])
          ? Colors.green.shade500
          : Theme.of(context).primaryColor,
      child: Center(
        child: Text(
          kAppSupportedLanguageInfos[index]['language'],
        ),
      ),
      onPressed: () {
        changeLanguage(kAppSupportedLanguageInfos[index]['languageCode']);
        Navigator.pop(context);
      },
    );
  }

  Widget buildLanguagesButtonsGrid() {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        crossAxisCount: 2,
      ),
      itemCount: kAppSupportedLanguageInfos.length,
      itemBuilder: buildLanguagButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: '_',
          child: Icon(
            Icons.translate,
            size: 38,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(
            Icons.close,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Random',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              onGenerateRandomLanguage();
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: buildLanguagesButtonsGrid(),
    );
  }
}
