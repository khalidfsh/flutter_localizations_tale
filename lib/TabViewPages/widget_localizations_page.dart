import 'package:flutter/material.dart';

class WidgetLocalizationsPage extends StatelessWidget {
  const WidgetLocalizationsPage({Key key}) : super(key: key);

  Widget buildLocaleRowWidget(BuildContext context) {
    return Card(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon((Directionality.of(context) == TextDirection.ltr)
              ? Icons.format_textdirection_l_to_r
              : Icons.format_textdirection_r_to_l),
          for (num i = 1; i <= 3; i++)
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(i.toString(), style: TextStyle(fontSize: 20)),
            )
        ],
      ),
    );
  }

  Widget buildTryNavButton(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(15),
      textColor: Colors.blue,
      child: Text('Tap to try Navigator.push'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Scaffold(
              appBar: AppBar(),
            ),
          ),
        );
      },
    );
  }

  String textMessage(BuildContext context) {
    return '''"WidgetLocalizations maps [locale] to [textDirection].
All localesare [TextDirection.ltr] (Left to Right) except for locales with the following [Locale.languageCode] values, which are [TextDirection.rtl]:
  - ar - Arabic
  - fa - Farsi
  - he - Hebrew
  - ps - Pashto
  - sd - Sindhi " from flutter.dev
  
  Current Text Dirctions: ${WidgetsLocalizations.of(context).textDirection}.
  
Next row card should be start accurding to [textDirection] type''';
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Text(
          textMessage(context),
          textDirection: TextDirection.ltr,
        ),
        buildLocaleRowWidget(context),
        buildTryNavButton(context),
      ],
    );
  }
}
