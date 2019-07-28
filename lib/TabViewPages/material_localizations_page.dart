import 'package:flutter/material.dart';

import '../Widget/locale_info_tile.dart';

class MaterialLocalizationsPage extends StatelessWidget {
  const MaterialLocalizationsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localeList = _materialLocalizationsProperties(context);
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

  Widget buildListTile(Map<String, String> materialPropertie, int index) {
    return (index == 0)
        ? Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'The localized resource values used by the Material widgets:',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 14, color: Colors.black54)),
              ),
              LocalInfoTile(
                title: materialPropertie['title'],
                content: materialPropertie['value'],
                type: materialPropertie['type'],
              ),
            ],
          )
        : LocalInfoTile(
            title: materialPropertie['title'],
            content: materialPropertie['value'],
            type: materialPropertie['type'],
          );
  }

  List<Map<String, String>> _materialLocalizationsProperties(
      BuildContext context) {
    return [
      {
        'type': 'Lable',
        'title': 'alertDialogLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .alertDialogLabel
      },
      {
        'type': 'Lable',
        'title': 'anteMeridiemAbbreviation',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .anteMeridiemAbbreviation
      },
      {
        'type': 'Tooltip',
        'title': 'backButtonTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .backButtonTooltip
      },
      {
        'type': 'Lable',
        'title': 'cancelButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .cancelButtonLabel
      },
      {
        'type': 'Lable',
        'title': 'closeButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .closeButtonLabel
      },
      {
        'type': 'Tooltip',
        'title': 'closeButtonTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .closeButtonTooltip
      },
      {
        'type': 'Hint',
        'title': 'collapsedIconTapHint',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .collapsedIconTapHint
      },
      {
        'type': 'Lable',
        'title': 'continueButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .continueButtonLabel
      },
      {
        'type': 'Lable',
        'title': 'copyButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .copyButtonLabel
      },
      {
        'type': 'Lable',
        'title': 'cutButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .cutButtonLabel
      },
      {
        'type': 'Tooltip',
        'title': 'deleteButtonTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .deleteButtonTooltip
      },
      {
        'type': 'Lable',
        'title': 'dialogLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .dialogLabel
      },
      {
        'type': 'Lable',
        'title': 'drawerLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .drawerLabel
      },
      {
        'type': 'Hint',
        'title': 'expandedIconTapHint',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .expandedIconTapHint
      },
      {
        'type': 'Time',
        'title': 'firstDayOfWeekIndex',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .firstDayOfWeekIndex
            .toString()
      },
      {
        'type': 'Numbers',
        'title': 'formatDecimal',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatDecimal(1000000)
      },
      {
        'type': 'Time',
        'title': 'formatFullDate',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            //TODO: Replace with realtime DateTime
            .formatFullDate(DateTime(1991, 4, 19, 23, 0, 0))
      },
      {
        'type': 'Time',
        'title': 'formatHour',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatHour(TimeOfDay(hour: 12, minute: 29))
      },
      {
        'type': 'Time',
        'title': 'formatMediumDate',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatMediumDate(DateTime(2249, 7, 19, 23, 59, 59))
      },
      {
        'type': 'Time',
        'title': 'formatMinute',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatMinute(TimeOfDay(hour: 15, minute: 30))
      },
      {
        'type': 'Time',
        'title': 'formatMonthYear',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatMonthYear(DateTime(2249, 7, 19, 23, 59, 59))
      },
      {
        'type': 'Time',
        'title': 'formatTimeOfDay',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatTimeOfDay(TimeOfDay(hour: 15, minute: 30))
      },
      {
        'type': 'Time',
        'title': 'formatYear',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatYear(DateTime(2249, 7, 19, 23, 59, 59))
      },
      {
        'type': 'Lable',
        'title': 'hideAccountsLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .hideAccountsLabel
      },
      {
        'type': 'Lable',
        'title': 'licensesPageTitle',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .licensesPageTitle
      },
      {
        'type': 'Lable',
        'title': 'modalBarrierDismissLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .modalBarrierDismissLabel
      },
      {
        'type': 'Time',
        'title': 'narrowWeekdays',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .narrowWeekdays
            .toString()
      },
      {
        'type': 'Tooltip',
        'title': 'nextMonthTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .nextMonthTooltip
      },
      {
        'type': 'Tooltip',
        'title': 'nextPageTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .nextPageTooltip
      },
      {
        'type': 'Lable',
        'title': 'okButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .okButtonLabel
      },
      {
        'type': 'Tooltip',
        'title': 'openAppDrawerTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .openAppDrawerTooltip
      },
      {
        'type': 'Lable',
        'title': 'pasteButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .pasteButtonLabel
      },
      {
        'type': 'Lable',
        'title': 'popupMenuLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .popupMenuLabel
      },
      {
        'type': 'Lable',
        'title': 'postMeridiemAbbreviation',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .postMeridiemAbbreviation
      },
      {
        'type': 'Tooltip',
        'title': 'previousMonthTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .previousMonthTooltip
      },
      {
        'type': 'Tooltip',
        'title': 'previousPageTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .previousPageTooltip
      },
      {
        'type': 'Lable',
        'title': 'refreshIndicatorSemanticLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .refreshIndicatorSemanticLabel
      },
      {
        'type': 'Arrange',
        'title': 'reorderItemDown',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemDown
      },
      {
        'type': 'Arrange',
        'title': 'reorderItemLeft',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemLeft
      },
      {
        'type': 'Arrange',
        'title': 'reorderItemRight',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemRight
      },
      {
        'type': 'Arrange',
        'title': 'reorderItemToEnd',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemToEnd
      },
      {
        'type': 'Arrange',
        'title': 'reorderItemToStart',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemToStart
      },
      {
        'type': 'Arrange',
        'title': 'reorderItemUp',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemUp
      },
      {
        'type': 'Arrange',
        'title': 'rowsPerPageTitle',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .rowsPerPageTitle
      },
      {
        'type': 'Arrange',
        'title': 'scriptCategory',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .scriptCategory
            .toString()
      },
      {
        'type': 'Lable',
        'title': 'searchFieldLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .searchFieldLabel
      },
      {
        'type': 'Lable',
        'title': 'selectAllButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .selectAllButtonLabel
      },
      {
        'type': 'Lable',
        'title': 'showAccountsLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .showAccountsLabel
      },
      {
        'type': 'Tooltip',
        'title': 'showMenuTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .showMenuTooltip
      },
      {
        'type': 'Lable',
        'title': 'signedInLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .signedInLabel
      },
      {
        'type': 'Time',
        'title': 'timePickerHourModeAnnouncement',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .timePickerHourModeAnnouncement
      },
      {
        'type': 'Time',
        'title': 'timePickerMinuteModeAnnouncement',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .timePickerMinuteModeAnnouncement
      },
      {
        'type': 'Lable',
        'title': 'viewLicensesButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .viewLicensesButtonLabel
      },
    ];
  }
}
