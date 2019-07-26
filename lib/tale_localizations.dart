import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';

class TaleLocalizations {
  const TaleLocalizations(this.locale) : assert(locale != null);

  final Locale locale;

  TaleLocalizations of(BuildContext context) =>
      Localizations.of<TaleLocalizations>(context, TaleLocalizations);

  static const List<Map<String, String>> supportedLanguageInfos = const [
    {"language": "العربية", "languageCode": "ar"},
    {"language": "English", "languageCode": "en"},
  ];

  static const Map<String, Map<String, String>> _loclizesValues = {
    "ar": {
      "title": 'آهلاً بالعالم',
      "switchLanguage": 'تغيير اللغة',
      "lable": 'عنوان',
      "info": 'معلومة',
      "dateTime": 'تاريخ و وقت',
      "tapHint": 'تلميحة',
    },
    "en": {
      "title": "Hello World",
      "switchLanguage": 'Switch Language',
      "lable": 'Lable',
      "info": 'Info',
      "dateTime": 'Date&Time',
      "tapHint": 'TapHint',
    }
  };

  String get title => _loclizesValues[locale.languageCode]['title'];
  String get switchLanguage =>
      _loclizesValues[locale.languageCode]['switchLanguage'];
  String get lable => _loclizesValues[locale.languageCode]['lable'];
  String get info => _loclizesValues[locale.languageCode]['info'];
  String get dateTime => _loclizesValues[locale.languageCode]['dateTime'];
  String get tapHint => _loclizesValues[locale.languageCode]['tapHint'];

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
