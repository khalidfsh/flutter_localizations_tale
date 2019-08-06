import 'package:flutter/material.dart';

import '../Widget/locale_info_tile.dart';

class MaterialLocalizationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localeList = _materialLocalizationsProperties(context);
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

  List<Map<String, dynamic>> _materialLocalizationsProperties(
      BuildContext context) {
    return [
      {
        'type': 'Lable',
        'indicator': 'alertDialogLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .alertDialogLabel
      },
      {
        'type': 'Lable',
        'indicator': 'anteMeridiemAbbreviation',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .anteMeridiemAbbreviation
      },
      {
        'type': 'Tooltip',
        'indicator': 'backButtonTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .backButtonTooltip
      },
      {
        'type': 'Lable',
        'indicator': 'cancelButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .cancelButtonLabel
      },
      {
        'type': 'Lable',
        'indicator': 'closeButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .closeButtonLabel
      },
      {
        'type': 'Tooltip',
        'indicator': 'closeButtonTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .closeButtonTooltip
      },
      {
        'type': 'Hint',
        'indicator': 'collapsedIconTapHint',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .collapsedIconTapHint
      },
      {
        'type': 'Lable',
        'indicator': 'continueButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .continueButtonLabel
      },
      {
        'type': 'Lable',
        'indicator': 'copyButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .copyButtonLabel
      },
      {
        'type': 'Lable',
        'indicator': 'cutButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .cutButtonLabel
      },
      {
        'type': 'Tooltip',
        'indicator': 'deleteButtonTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .deleteButtonTooltip
      },
      {
        'type': 'Lable',
        'indicator': 'dialogLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .dialogLabel
      },
      {
        'type': 'Lable',
        'indicator': 'drawerLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .drawerLabel
      },
      {
        'type': 'Hint',
        'indicator': 'expandedIconTapHint',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .expandedIconTapHint
      },
      {
        'type': 'Time',
        'indicator': 'firstDayOfWeekIndex',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .firstDayOfWeekIndex
      },
      {
        'type': 'Numbers',
        'indicator': 'formatDecimal',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatDecimal(1000000)
      },
      {
        'type': 'Time',
        'indicator': 'formatFullDate',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            //TODO: Replace with realtime DateTime
            .formatFullDate(DateTime(1991, 4, 19, 23, 0, 0))
      },
      {
        'type': 'Time',
        'indicator': 'formatHour',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatHour(TimeOfDay(hour: 12, minute: 29))
      },
      {
        'type': 'Time',
        'indicator': 'formatMediumDate',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatMediumDate(DateTime(2249, 7, 19, 23, 59, 59))
      },
      {
        'type': 'Time',
        'indicator': 'formatMinute',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatMinute(TimeOfDay(hour: 15, minute: 30))
      },
      {
        'type': 'Time',
        'indicator': 'formatMonthYear',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatMonthYear(DateTime(2249, 7, 19, 23, 59, 59))
      },
      {
        'type': 'Time',
        'indicator': 'formatTimeOfDay',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatTimeOfDay(TimeOfDay(hour: 15, minute: 30))
      },
      {
        'type': 'Time',
        'indicator': 'formatYear',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .formatYear(DateTime(2249, 7, 19, 23, 59, 59))
      },
      {
        'type': 'Lable',
        'indicator': 'hideAccountsLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .hideAccountsLabel
      },
      {
        'type': 'Lable',
        'indicator': 'licensesPageindicator',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .licensesPageTitle
      },
      {
        'type': 'Lable',
        'indicator': 'modalBarrierDismissLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .modalBarrierDismissLabel
      },
      {
        'type': 'Time',
        'indicator': 'narrowWeekdays',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .narrowWeekdays
      },
      {
        'type': 'Tooltip',
        'indicator': 'nextMonthTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .nextMonthTooltip
      },
      {
        'type': 'Tooltip',
        'indicator': 'nextPageTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .nextPageTooltip
      },
      {
        'type': 'Lable',
        'indicator': 'okButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .okButtonLabel
      },
      {
        'type': 'Tooltip',
        'indicator': 'openAppDrawerTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .openAppDrawerTooltip
      },
      {
        'type': 'Lable',
        'indicator': 'pasteButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .pasteButtonLabel
      },
      {
        'type': 'Lable',
        'indicator': 'popupMenuLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .popupMenuLabel
      },
      {
        'type': 'Lable',
        'indicator': 'postMeridiemAbbreviation',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .postMeridiemAbbreviation
      },
      {
        'type': 'Tooltip',
        'indicator': 'previousMonthTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .previousMonthTooltip
      },
      {
        'type': 'Tooltip',
        'indicator': 'previousPageTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .previousPageTooltip
      },
      {
        'type': 'Lable',
        'indicator': 'refreshIndicatorSemanticLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .refreshIndicatorSemanticLabel
      },
      {
        'type': 'Arrange',
        'indicator': 'reorderItemDown',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemDown
      },
      {
        'type': 'Arrange',
        'indicator': 'reorderItemLeft',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemLeft
      },
      {
        'type': 'Arrange',
        'indicator': 'reorderItemRight',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemRight
      },
      {
        'type': 'Arrange',
        'indicator': 'reorderItemToEnd',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemToEnd
      },
      {
        'type': 'Arrange',
        'indicator': 'reorderItemToStart',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemToStart
      },
      {
        'type': 'Arrange',
        'indicator': 'reorderItemUp',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .reorderItemUp
      },
      {
        'type': 'Arrange',
        'indicator': 'rowsPerPageindicator',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .rowsPerPageTitle
      },
      {
        'type': 'Arrange',
        'indicator': 'scriptCategory',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .scriptCategory
      },
      {
        'type': 'Lable',
        'indicator': 'searchFieldLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .searchFieldLabel
      },
      {
        'type': 'Lable',
        'indicator': 'selectAllButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .selectAllButtonLabel
      },
      {
        'type': 'Lable',
        'indicator': 'showAccountsLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .showAccountsLabel
      },
      {
        'type': 'Tooltip',
        'indicator': 'showMenuTooltip',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .showMenuTooltip
      },
      {
        'type': 'Lable',
        'indicator': 'signedInLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .signedInLabel
      },
      {
        'type': 'Time',
        'indicator': 'timePickerHourModeAnnouncement',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .timePickerHourModeAnnouncement
      },
      {
        'type': 'Time',
        'indicator': 'timePickerMinuteModeAnnouncement',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .timePickerMinuteModeAnnouncement
      },
      {
        'type': 'Lable',
        'indicator': 'viewLicensesButtonLabel',
        'value': Localizations.of<MaterialLocalizations>(
                context, MaterialLocalizations)
            .viewLicensesButtonLabel
      },
    ];
  }
}
