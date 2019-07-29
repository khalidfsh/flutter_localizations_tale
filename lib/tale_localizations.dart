import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';

class TaleLocalizations {
  const TaleLocalizations(this.locale) : assert(locale != null);

  final Locale locale;

  static TaleLocalizations of(BuildContext context) =>
      Localizations.of<TaleLocalizations>(context, TaleLocalizations);

  static const Map<String, Map<String, String>> _loclizesValues = {
    "ar": {
      "title": 'آهلاً بالعالم',
    },
    'bg': {"title": "Hello World"}, // Bulgarian
    'bs': {"title": "Hello World"}, // Bosnian
    'ca': {"title": "Hello World"}, // Catalan Valencian
    'cs': {"title": "Hello World"}, // Czech
    'da': {"title": "Hello World"}, // Danish
    'de': {"title": "Hello World"}, // German
    'el': {"title": "Hello World"}, // Modern Greek
    'en': {"title": "Hello World"}, // English
    'es': {"title": "Hello World"}, // Spanish Castilian
    'et': {"title": "Hello World"}, // Estonian
    'fa': {"title": "Hello World"}, // Persian
    'fi': {"title": "Hello World"}, // Finnish
    'fil': {"title": "Hello World"}, // Filipino Pilipino
    'fr': {"title": "Hello World"}, // French
    'gl': {"title": "Hello World"}, // Galician
    'gsw': {"title": "Hello World"}, // Swiss German Alemannic Alsatian
    'he': {"title": "Hello World"}, // Hebrew
    'hi': {"title": "Hello World"}, // Hindi
    'hr': {"title": "Hello World"}, // Croatian
    'hu': {"title": "Hello World"}, // Hungarian
    'hy': {"title": "Hello World"}, // Armenian
    'id': {"title": "Hello World"}, // Indonesian
    'it': {"title": "Hello World"}, // Italian
    'ja': {"title": "Hello World"}, // Japanese
    'kk': {"title": "Hello World"}, // Kazakh
    'km': {"title": "Hello World"}, // Khmer Central Khmer
    'ko': {"title": "Hello World"}, // Korean
    'lt': {"title": "Hello World"}, // Lithuanian
    'lv': {"title": "Hello World"}, // Latvian
    'mn': {"title": "Hello World"}, // Mongolian
    'mr': {"title": "Hello World"}, // Marathi
    'ms': {"title": "Hello World"}, // Malay
    'nb': {"title": "Hello World"}, // Norwegian Bokmål
    'nl': {"title": "Hello World"}, // Dutch Flemish
    'pl': {"title": "Hello World"}, // Polish
    'ps': {"title": "Hello World"}, // Pushto Pashto
    'pt': {"title": "Hello World"}, // Portuguese
    'ro': {"title": "Hello World"}, // Romanian Moldavian Moldovan
    'ru': {"title": "Hello World"}, // Russian
    'sk': {"title": "Hello World"}, // Slovak
    'sl': {"title": "Hello World"}, // Slovenian
    'sr': {"title": "Hello World"}, // Serbian
    'sv': {"title": "Hello World"}, // Swedish
    'sw': {"title": "Hello World"}, // Swahili
    'ta': {"title": "Hello World"}, // Tamil
    'th': {"title": "Hello World"}, // Thai
    'tl': {"title": "Hello World"}, // Tagalog
    'tr': {"title": "Hello World"}, // Turkish
    'uk': {"title": "Hello World"}, // Ukrainian
    'ur': {"title": "Hello World"}, // Urdu
    'vi': {"title": "Hello World"}, // Vietnamese
    'zh': {"title": "Hello World"}, // Chinese
  };

  String get title => _loclizesValues[locale.languageCode]['title'];

  String get language => kAppSupportedLanguageInfos
      .singleWhere((t) => t['languageCode'] == locale.languageCode)['language'];

  static const LocalizationsDelegate<TaleLocalizations> delegate =
      _TaleLocalizationsDelegate();
}

class _TaleLocalizationsDelegate
    extends LocalizationsDelegate<TaleLocalizations> {
  const _TaleLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => kAppSupportedLanguageInfos
      .map((languageInfo) => languageInfo['languageCode'])
      .contains(locale.languageCode);

  @override
  Future<TaleLocalizations> load(Locale locale) =>
      SynchronousFuture<TaleLocalizations>(TaleLocalizations(locale));

  @override
  bool shouldReload(LocalizationsDelegate<TaleLocalizations> old) => false;
}

final List<Map<String, String>> kAppSupportedLanguageInfos = const [
  {"language": "العربية", "languageCode": "ar"},
  {"language": "Bulgarian", "languageCode": "bg"},
  {"language": "Bosnian", "languageCode": "bs"},
  {"language": "Catalan Valencian", "languageCode": "ca"},
  {"language": "Czech", "languageCode": "cs"},
  {"language": "Danish", "languageCode": "da"},
  {"language": "German", "languageCode": "de"},
  {"language": "Modern Greek", "languageCode": "el"},
  {"language": "English", "languageCode": "en"},
  {"language": "Spanish Castilian", "languageCode": "es"},
  {"language": "Estonian", "languageCode": "et"},
  {"language": "Persian", "languageCode": "fa"},
  {"language": "Finnish", "languageCode": "fi"},
  {"language": "Filipino Pilipino", "languageCode": "fil"},
  {"language": "French", "languageCode": "fr"},
  {"language": "Galician", "languageCode": "gl"},
  {"language": "Swiss German", "languageCode": "gsw"},
  {"language": "Hebrew", "languageCode": "he"},
  {"language": "Hindi", "languageCode": "hi"},
  {"language": "Croatian", "languageCode": "hr"},
  {"language": "Hungarian", "languageCode": "hu"},
  {"language": "Armenian", "languageCode": "hy"},
  {"language": "Indonesian", "languageCode": "id"},
  {"language": "Italian", "languageCode": "it"},
  {"language": "Japanese", "languageCode": "ja"},
  {"language": "Kazakh", "languageCode": "kk"},
  {"language": "Khmer Central", "languageCode": "km"},
  {"language": "Korean", "languageCode": "ko"},
  {"language": "Lithuanian", "languageCode": "lt"},
  {"language": "Latvian", "languageCode": "lv"},
  {"language": "Mongolian", "languageCode": "mn"},
  {"language": "Marathi", "languageCode": "mr"},
  {"language": "Malay", "languageCode": "ms"},
  {"language": "Norwegian Bokmål", "languageCode": "nb"},
  {"language": "Dutch Flemish", "languageCode": "nl"},
  {"language": "Polish", "languageCode": "pl"},
  {"language": "Pushto Pashto", "languageCode": "ps"},
  {"language": "Portuguese", "languageCode": "pt"},
  {"language": "Romanian Moldavian", "languageCode": "ro"},
  {"language": "Russian", "languageCode": "ru"},
  {"language": "Slovak", "languageCode": "sk"},
  {"language": "Slovenian", "languageCode": "sl"},
  {"language": "Serbian", "languageCode": "sr"},
  {"language": "Swedish", "languageCode": "sv"},
  {"language": "Swahili", "languageCode": "sw"},
  {"language": "Tamil", "languageCode": "ta"},
  {"language": "Thai", "languageCode": "th"},
  {"language": "Tagalog", "languageCode": "tl"},
  {"language": "Turkish", "languageCode": "tr"},
  {"language": "Ukrainian", "languageCode": "uk"},
  {"language": "Urdu", "languageCode": "ur"},
  {"language": "Vietnamese", "languageCode": "vi"},
  {"language": "Chinese", "languageCode": "zh"},
];
