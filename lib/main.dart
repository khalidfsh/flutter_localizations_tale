import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_cupertino_localizations/flutter_cupertino_localizations.dart';

import './tale_home_page.dart';
import './tale_localizations.dart';

void main() => runApp(TaleApp());

class TaleApp extends StatefulWidget {
  @override
  _TaleAppState createState() => _TaleAppState();
}

class _TaleAppState extends State<TaleApp> {
  Locale currentLocale;

  void updateLocale(Locale newLocale) {
    setState(() {
      currentLocale = newLocale;
    });
    print('onLocaleChange: New Locale: $currentLocale');
  }

  Locale hundleLocaleCallback(
      List<Locale> deviceLocale, Iterable<Locale> appSupportedLocales) {
    print('hundleLocaleCallback: Device Locale: $deviceLocale');
    print('hundleLocaleCallback: App Supported Locales: $appSupportedLocales');

    currentLocale = (currentLocale == null)? appSupportedLocales.firstWhere(
      (locale) => locale.languageCode == locale.languageCode,
      orElse: () => Locale(appSupportedLocales.first.languageCode),
    ) : currentLocale;

    @override
    void initState() { 
      super.initState();
      //updateLocale(newLocale)
    }

    currentLocale = Locale(currentLocale.languageCode);

    print('hundleLocaleCallback: New Locale: $currentLocale');
    return currentLocale;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white),
    );
    return MaterialApp(
      title: 'Flutter Localisation Tale',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(9, 183, 211, 1),
        accentColor: Color.fromRGBO(229, 229, 229, 1),
      ),
      locale: currentLocale,
      supportedLocales: supportedLocalesList,
      //localeListResolutionCallback: hundleLocaleCallback,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        TaleLocalizations.delegate,
      ],
      home: TaleHomePage(
        onLocaleChange: updateLocale,
      ),
    );
  }

  List<Locale> supportedLocalesList = kAppSupportedLanguageInfos
      .map((localeInfo) => Locale(localeInfo['languageCode']))
      .toList();
}
