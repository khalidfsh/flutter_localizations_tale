import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './flat_rounded_card.dart';


class LocaleInfoTile extends StatelessWidget {
  const LocaleInfoTile({Key key, @required this.title, @required this.content, this.type})
      : assert(title != null && content != null),
        super(key: key);

  final String title;
  final String content;
  final String type;

  @override
  Widget build(BuildContext context) {
    //margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
    return FlatRoundedCard(
      child: Localizations.override(
        context: context,
        delegates: <LocalizationsDelegate<dynamic>>[
          GlobalWidgetsLocalizations.delegate
        ],
        locale: Locale('en'),
        child: ListTile(
          title: Row(textBaseline: TextBaseline.ideographic,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: <Widget>[
              Text(
                title + ':    ',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              Center(child: Text('( ' + content + ' )')),
            ],
          ),
        ),
      ),
    );
  }
}