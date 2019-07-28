import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './flat_rounded_card.dart';

class LocalInfoTile extends StatelessWidget {
  const LocalInfoTile(
      {Key key, @required this.title, @required this.content, this.type})
      : assert(title != null && content != null),
        super(key: key);

  final String title;
  final String content;
  final String type;

  @override
  Widget build(BuildContext context) {
    return FlatRoundedCard(
      child: ListTile(
        title: Text('$title :', style: TextStyle(fontSize: 12, color: Colors.black54)),
        subtitle: Padding(
          padding: (WidgetsLocalizations.of(context).textDirection ==
                  TextDirection.ltr)
              ? EdgeInsets.only(left: 100)
              : EdgeInsets.only(right: 100),
          child: Text(
            '$content',
            style: TextStyle(fontSize: 14, color: Colors.black),
            // maxLines: 1,
            textScaleFactor:
                (21 / content.length >= 1) ? 1.0 :  0.8,
          ),
        ),
        trailing: Chip(
          label: Text(type),
          backgroundColor: coloringTypeChip(type),
          labelStyle: TextStyle(fontSize: 12),
        ),

        // Row(textBaseline: TextBaseline.ideographic,
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.baseline,
        //   children: <Widget>[
        //     Text(
        //       title + ':    ',
        //       style: TextStyle(fontSize: 14, color: Colors.black54),
        //     ),
        //     Center(child: Text('( ' + content + ' )')),
        //   ],
      ),
      //   ),
    );
  }

  Color coloringTypeChip(String type) {
    switch (type) {
      case 'Lable':
        return Colors.lightBlue.shade700;
      case 'Tooltip':
        return Colors.teal.shade800;
      case 'Hint':
        return Colors.yellow.shade800;
      case 'Hint':
        return Colors.green.shade800;
      case 'Time':
        return Colors.red.shade800;
      default:
        return Colors.grey.shade600;
    }
  }
}
