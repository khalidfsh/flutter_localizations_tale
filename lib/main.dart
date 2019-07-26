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

  void onLocaleChange(Locale newLocale){

    setState(() {
      currentLocale = newLocale;
    });
  }

  Locale hundleLocaleCallback(
      Locale deviceLocale, Iterable<Locale> appSupportedLocales) {
    print('Device Locale: ' + deviceLocale.toString());
    print('Tale App Supported Locales: ' + appSupportedLocales.toString());

    currentLocale = appSupportedLocales.firstWhere(
      (locale) => deviceLocale.languageCode == locale.languageCode,
      orElse: () => Locale(
        appSupportedLocales.first.languageCode,
        deviceLocale.countryCode,
      ),
    );
    return currentLocale;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Localisation Tale',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(9, 183, 211, 1),
        accentColor: Color.fromRGBO(229, 229, 229, 1),
      ),
      locale: currentLocale,
      supportedLocales: [Locale('en'), Locale('ar')],
      localeResolutionCallback: hundleLocaleCallback,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        TaleLocalizations.delegate,
      ],
      home: TaleHomePage(onLocaleChange: onLocaleChange,),
    );
  }
}
