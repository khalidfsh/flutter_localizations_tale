import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';

class TaleLocalizations {
  const TaleLocalizations(this.locale) : assert(locale != null);

  final Locale locale;

  static TaleLocalizations of(BuildContext context) =>
      Localizations.of<TaleLocalizations>(context, TaleLocalizations);

  static const List<Map<String, String>> supportedLanguageInfos = const [
    {"language": "العربية", "languageCode": "ar"},
    {"language": "English", "languageCode": "en"},
    {"language": "English", "languageCode": "he"},
    {"language": "English", "languageCode": "es"},
  ];

  static const Map<String, Map<String, String>> _loclizesValues = {
    "ar": {
      "title": 'آهلاً بالعالم',
    },
    "en": {
      "title": "Hello World",
    },
    "he": {
      "title": "Hello World",
    },
    "es": {
      "title": "Hello World",
    }
  };

  String get title => _loclizesValues[locale.languageCode]['title'];

  String get language => supportedLanguageInfos.singleWhere((t) => t['languageCode'] == locale.languageCode)['language'];



  static const LocalizationsDelegate<TaleLocalizations> delegate =
      _TaleLocalizationsDelegate();
}

class _TaleLocalizationsDelegate
    extends LocalizationsDelegate<TaleLocalizations> {
  const _TaleLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => TaleLocalizations.supportedLanguageInfos
      .map((languageInfo) => languageInfo['languageCode'])
      .contains(locale.languageCode);

  @override
  Future<TaleLocalizations> load(Locale locale) =>
      SynchronousFuture<TaleLocalizations>(TaleLocalizations(locale));

  @override
  bool shouldReload(LocalizationsDelegate<TaleLocalizations> old) => false;
}
