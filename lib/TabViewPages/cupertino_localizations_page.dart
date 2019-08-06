import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/locale_info_tile.dart';

class CupertinoLocalizationsPage extends StatelessWidget {
  const CupertinoLocalizationsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localeList = _cupertinoLocalizationsProperties(context);
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: localeList.length,
      itemBuilder: (context, i) {
        return LocalInfoTile(
          indicator: localeList[i]['indicator'],
          value: localeList[i]['value'],
          type: localeList[i]['type'],
        );
      },
    );
  }

  List<Map<String, dynamic>> _cupertinoLocalizationsProperties(
      BuildContext context) {
    return [
      {
        'type': 'Lable',
        'indicator': 'alertDialogLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .alertDialogLabel
      },
      {
        'type': 'Lable',
        'indicator': 'anteMeridiemAbbreviation',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .anteMeridiemAbbreviation
      },
      {
        'type': 'Lable',
        'indicator': 'copyButtonLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .copyButtonLabel
      },
      {
        'type': 'Lable',
        'indicator': 'cutButtonLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .cutButtonLabel
      },
      {
        'type': 'Time',
        'indicator': 'datePickerDateOrder',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerDateOrder
      },
      {
        'type': 'Time',
        'indicator': 'datePickerDateTimeOrder',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerDateTimeOrder
            .toString()
      },
      {
        'type': 'Time',
        'indicator': 'datePickerDayOfMonth',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerDayOfMonth(0)
      },
      {
        'type': 'Time',
        'indicator': 'datePickerHour',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerHour(10)
      },
      {
        'type': 'Lable',
        'indicator': 'datePickerHourSemanticsLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerHourSemanticsLabel(14)
      },
      {
        'type': 'Time',
        'indicator': 'datePickerMediumDate',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerMediumDate(DateTime(1991, 4, 19, 23, 0, 0))
      },
      {
        'type': 'Time',
        'indicator': 'datePickerMinute',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerMinute(220)
      },
      {
        'type': 'Lable',
        'indicator': 'datePickerMinuteSemanticsLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerMinuteSemanticsLabel(360)
      },
      {
        'type': 'Time',
        'indicator': 'datePickerMonth',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerMonth(4)
      },
      {
        'type': 'Time',
        'indicator': 'datePickerYear',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .datePickerYear(2257)
      },
      {
        'type': 'Label',
        'indicator': 'pasteButtonLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .pasteButtonLabel
      },
      {
        'type': '?',
        'indicator': 'postMeridiemAbbreviation',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .postMeridiemAbbreviation
      },
      {
        'type': 'Label',
        'indicator': 'selectAllButtonLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .selectAllButtonLabel
      },
      {
        'type': 'Time',
        'indicator': 'timerPickerHour',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerHour(1230)
      },
      {
        'type': 'Label',
        'indicator': 'timerPickerHourLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerHourLabel(1230)
      },
      {
        'type': 'Time',
        'indicator': 'timerPickerMinute',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerMinute(210)
      },
      {
        'type': 'Label',
        'indicator': 'timerPickerMinuteLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerMinuteLabel(1)
      },
      {
        'type': 'Time',
        'indicator': 'timerPickerSecond',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerSecond(3010)
      },
      {
        'type': 'Lable',
        'indicator': 'timerPickerSecondLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .timerPickerSecondLabel(3010)
      },
      {
        'type': 'Lable',
        'indicator': 'todayLabel',
        'value': Localizations.of<CupertinoLocalizations>(
                context, CupertinoLocalizations)
            .todayLabel
      },
    ];
  }
}
