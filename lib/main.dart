import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './tale_home_page.dart';
import './tale_localizations.dart';

void main() => runApp(TaleApp());

class TaleApp extends StatefulWidget {
  @override
  _TaleAppState createState() => _TaleAppState();
}

class _TaleAppState extends State<TaleApp> {
  /// Variable holds [Locale] data type
  Locale currentLocale;

  /// Building a List of Locales from [kAppSupportedLanguageInfos]
  List<Locale> supportedLocalesList = kAppSupportedLanguageInfos
      .map((localeInfo) => Locale(localeInfo['languageCode']))
      .toList();

  /// Void function to update locale state of our MaterialApp widget
  void updateLocale(Locale newLocale) {
    setState(() {
      currentLocale = newLocale;
    });
    print('New Locale: $currentLocale');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Localisation Tale',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(229, 229, 229, 1),
        cardColor: Color.fromRGBO(229, 229, 229, 1),
      ),

      /// Locale of MaterialApp, which managed by this StatefulWidget
      /// to rebuild the whole tree of our app.
      locale: currentLocale,

      /// Supported locales we want to support in our app.
      supportedLocales: supportedLocalesList,

      /// Callback provided by MaterialApp widget to retrive.
      /// a list of prefered Locales(&languages)
      // localeListResolutionCallback: (deviceLocales, suportedLocales) {
      //   print('Device Locales: $deviceLocales');
      //   print('App Supported Locales: $suportedLocales');
      //   return deviceLocales[0] ?? Locale('ar');
      // },

      /// Callback provided by MaterialApp widget to retrive
      /// the first prefered Locale(&language).
      // localeResolutionCallback: (deviceLocale, suportedLocales) {
      //   print('Device Locale: $deviceLocale');
      //   print('App Supported Locales: $suportedLocales');
      //   return deviceLocale ?? Locale('ar');
      // },

      /// List of localizations delegates we want to adopt in our app,
      /// customized or provided by Flutter.
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        /// Our custom localizations delegate,
        /// see [TaleLocalizations.delegate] & [_TaleLocalizationsDelegate] for more info.
        TaleLocalizations.delegate,
      ],
      
      home: TaleHomePage(onLocaleChange: updateLocale),
    );
  }
}
