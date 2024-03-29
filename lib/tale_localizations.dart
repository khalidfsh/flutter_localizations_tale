import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

/// Class to establish localized resource values as we need in our app.
///
/// This class supports locales with the following [Locale.languageCode]s
/// in list available programatically via [kMaterialSupportedLanguages].
class TaleLocalizations {
  const TaleLocalizations(this.locale) : assert(locale != null);

  /// A [LocalizationsDelegate] that uses [TaleLocalizations.load]
  /// to create an instance of this class.
  static const LocalizationsDelegate<TaleLocalizations> delegate =
      _TaleLocalizationsDelegate();


  /// The locale for which the values of this class's localized resources
  /// have been translated.
  final Locale locale;


  /// All localized values should be provided here,
  /// it's simple in our example to understand the core localization
  /// benefit in Flutter, if you have more value use [intel] package.
  static const Map<String, Map<String, String>> _loclizesValues = {
    "ar": {"title": 'مرحبا بالعالم'}, // Arabic
    'bg': {"title": "Здравей свят"}, // Bulgarian
    'bs': {"title": "zdravo svijetu"}, // Bosnian
    'ca': {"title": "Hola món"}, // Catalan Valencian
    'cs': {"title": "Ahoj světe"}, // Czech
    'da': {"title": "Hej Verden"}, // Danish
    'de': {"title": "Hallo Welt"}, // German
    'el': {"title": "Γειά σου Κόσμε"}, // Modern Greek
    'en': {"title": "Hello World"}, // English
    'es': {"title": "Hola Mundo"}, // Spanish Castilian
    'et': {"title": "Tere, Maailm"}, // Estonian
    'fa': {"title": "سلام دنیا"}, // Persian
    'fi': {"title": "Hei maailma"}, // Finnish
    'fil': {"title": "hello mundo"}, // Filipino Pilipino
    'fr': {"title": "Bonjour le monde"}, // French
    'gl': {"title": "Ola mundo"}, // Galician
    'gsw': {"title": "Hallo Welt"}, // Swiss German Alemannic Alsatian
    'he': {"title": "שלום עולם"}, // Hebrew
    'hi': {"title": "नमस्ते दुनिया"}, // Hindi
    'hr': {"title": "Pozdrav svijete"}, // Croatian
    'hu': {"title": "Helló Világ"}, // Hungarian
    'hy': {"title": "Բարեւ աշխարհ"}, // Armenian
    'id': {"title": "Halo Dunia"}, // Indonesian
    'it': {"title": "Ciao mondo"}, // Italian
    'ja': {"title": "こんにちは世界"}, // Japanese
    'kk': {"title": "Сәлем Әлем"}, // Kazakh
    'km': {"title": "សួស្តី​ពិភពលោក"}, // Khmer Central Khmer
    'ko': {"title": "안녕 세상"}, // Korean
    'lt': {"title": "Labas pasauli"}, // Lithuanian
    'lv': {"title": "Sveika pasaule"}, // Latvian
    'mn': {"title": "сайн уу ертөнц"}, // Mongolian
    'mr': {"title": "हॅलो वर्ल्ड"}, // Marathi
    'ms': {"title": "Hai dunia"}, // Malay
    'nb': {"title": "Hei Verden"}, // Norwegian Bokmål
    'nl': {"title": "Hallo Wereld"}, // Dutch Flemish
    'pl': {"title": "Witaj świecie"}, // Polish
    'ps': {"title": "سلام نړی"}, // Pushto Pashto
    'pt': {"title": "Olá Mundo"}, // Portuguese
    'ro': {"title": "Salut Lume"}, // Romanian Moldavian Moldovan
    'ru': {"title": "Привет, мир"}, // Russian
    'sk': {"title": "ahoj svet"}, // Slovak
    'sl': {"title": "Pozdravljen, svet"}, // Slovenian
    'sr': {"title": "Здраво Свете"}, // Serbian
    'sv': {"title": "Hej världen"}, // Swedish
    'sw': {"title": "Salamu, Dunia"}, // Swahili
    'ta': {"title": "ஹலோ உலகம்"}, // Tamil
    'th': {"title": "สวัสดีชาวโลก"}, // Thai
    'tl': {"title": "Салом Ҷаҳон"}, // Tagalog
    'tr': {"title": "Selam Dünya"}, // Turkish
    'uk': {"title": "Привіт Світ"}, // Ukrainian
    'ur': {"title": "ہیلو دنیا"}, // Urdu
    'vi': {"title": "Chào thế giới"}, // Vietnamese
    'zh': {"title": "你好，世界"}, // Chinese
  };

  static TaleLocalizations of(BuildContext context) =>
      Localizations.of<TaleLocalizations>(context, TaleLocalizations);

  /// Getter to get title as [locale.languageCode] wants.
  String get title => _loclizesValues[locale.languageCode]['title'];

  /// Getter for language name from our supported language list [kAppSupportedLanguageInfos]
  String get language => kAppSupportedLanguageInfos
      .singleWhere((t) => t['languageCode'] == locale.languageCode)['language'];

  /// Creates an object that provides localized resource values for the
  /// lowest levels of the Flutter framework.
  ///
  /// This method used to create a [LocalizationsDelegate].
  /// The [MaterialApp] does so by default in our case.
  static Future<TaleLocalizations> load(Locale locale) =>
      SynchronousFuture<TaleLocalizations>(TaleLocalizations(locale));
}

/// Custom localizations delegate.
class _TaleLocalizationsDelegate
    extends LocalizationsDelegate<TaleLocalizations> {
  const _TaleLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => kAppSupportedLanguageInfos
      .map((languageInfo) => languageInfo['languageCode'])
      .contains(locale.languageCode);

  @override
  Future<TaleLocalizations> load(Locale locale) =>
      TaleLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<TaleLocalizations> old) => false;
}

/// Const list of maps contain supported language for or app,
/// conrain all languges names in the same language and its code.
const List<Map<String, String>> kAppSupportedLanguageInfos = const [
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
