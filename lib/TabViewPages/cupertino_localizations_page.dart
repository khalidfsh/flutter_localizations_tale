import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../Widget/locale_info_tile.dart';

class CupertinoLocalizationsPage extends StatelessWidget {
  const CupertinoLocalizationsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localeList = _cupertinoLocalizationsProperties(context);
    return Container(
      padding: EdgeInsets.only(top: 3),
      color: Color.fromRGBO(229, 229, 229, 1),
      child: ListView.builder(
          itemCount: localeList.length,
          itemBuilder: (context, i) {
            return buildListTile(localeList[i], i);
          }),
    );
  }

  Widget buildListTile(Map<String, String> cupertinoPropertie, int index) {
    return (index == 0)
        ? Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'The localized resource values used by the Cupertino widgets:',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 14, color: Colors.black54)),
              ),
              LocalInfoTile(
                title: cupertinoPropertie['title'],
                content: cupertinoPropertie['value'],
                type: cupertinoPropertie['type'],
              ),
            ],
          )
        : LocalInfoTile(
            title: cupertinoPropertie['title'],
            content: cupertinoPropertie['value'],
            type: cupertinoPropertie['type'],
          );
  }

  List<Map<String, String>> _cupertinoLocalizationsProperties(
      BuildContext context) {
    return [
      {
        'type': 'Lable',
        'title': 'alertDialogLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .alertDialogLabel
      },
      {
        'type': 'Lable',
        'title': 'anteMeridiemAbbreviation',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .anteMeridiemAbbreviation
      },
      {
        'type': 'Lable',
        'title': 'copyButtonLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .copyButtonLabel
      },
      {
        'type': 'Lable',
        'title': 'cutButtonLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .cutButtonLabel
      },
      {
        'type': 'Time',
        'title': 'datePickerDateOrder',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerDateOrder.toString()
      },
      {
        'type': 'Time',
        'title': 'datePickerDateTimeOrder',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerDateTimeOrder.toString()
      },
      {
        'type': 'Time',
        'title': 'datePickerDayOfMonth',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerDayOfMonth(0)
      },
      {
        'type': 'Time',
        'title': 'datePickerHour',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerHour(10)
      },
      {
        'type': 'Lable',
        'title': 'datePickerHourSemanticsLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerHourSemanticsLabel(14)
      },
      {
        'type': 'Time',
        'title': 'datePickerMediumDate',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerMediumDate(DateTime(1991, 4, 19, 23, 0, 0))
      },
      {
        'type': 'Time',
        'title': 'datePickerMinute',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerMinute(220)
      },
      {
        'type': 'Lable',
        'title': 'datePickerMinuteSemanticsLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerMinuteSemanticsLabel(360)
      },
      {
        'type': 'Time',
        'title': 'datePickerMonth',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerMonth(4)
      },
      {
        'type': 'Time',
        'title': 'datePickerYear',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerYear(2257)
      },
      {
        'type': 'Label',
        'title': 'pasteButtonLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .pasteButtonLabel
      },
      {
        'type': '?',
        'title': 'postMeridiemAbbreviation',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .postMeridiemAbbreviation
      },
      {
        'type': 'Label',
        'title': 'selectAllButtonLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .selectAllButtonLabel
      },
      {
        'type': 'Time',
        'title': 'timerPickerHour',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerHour(1230)
      },
      {
        'type': 'Label',
        'title': 'timerPickerHourLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerHourLabel(1230)
      },
      {
        'type': 'Time',
        'title': 'timerPickerMinute',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerMinute(210)
      },
      {
        'type': 'Label',
        'title': 'timerPickerMinuteLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerMinuteLabel(1)
      },
      {
        'type': 'Time',
        'title': 'timerPickerSecond',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerSecond(3010)
      },
      {
        'type': 'Lable',
        'title': 'timerPickerSecondLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerSecondLabel(3010)
      },
      {
        'type': 'Lable',
        'title': 'todayLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .todayLabel
      },
    ];
  }
}
