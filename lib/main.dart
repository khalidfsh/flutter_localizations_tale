import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_cupertino_localizations/flutter_cupertino_localizations.dart';

void main() => runApp(TaleApp());

class TaleApp extends StatefulWidget {
  @override
  _TaleAppState createState() => _TaleAppState();
}

class _TaleAppState extends State<TaleApp> {
  Locale currentLocale;

  Future onLocaleChange(Locale newLocale) async {
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
      theme: ThemeData(),
      //locale: currentLocale,
      supportedLocales: [Locale('en'), Locale('ar')],
      localeResolutionCallback: hundleLocaleCallback,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: Center(child: Text(currentLocale.toString())),
    );
  }
}
