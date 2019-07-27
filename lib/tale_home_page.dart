import 'package:flutter/material.dart';

import './tale_localizations.dart';
import './TabViewPages/all_pages.dart';

class TaleHomePage extends StatefulWidget {
  TaleHomePage({Key key, this.onLocaleChange}) : super(key: key);

  final Function onLocaleChange;
  _TaleHomePageState createState() => _TaleHomePageState();
}

class _TaleHomePageState extends State<TaleHomePage>
    with SingleTickerProviderStateMixin {
  final List<Tab> _tabs = <Tab>[
    Tab(text: 'WidgetsLocalizations'),
    Tab(text: 'MaterialLocalizations'),
    Tab(text: 'CupertinoLocalizations'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void switchLanguage(BuildContext context) {
    if (Localizations.localeOf(context).languageCode == 'en') {
      widget.onLocaleChange(Locale('ar'));
    } else {
      widget.onLocaleChange(Locale('en'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🌍  ${Localizations.of<TaleLocalizations>(context, TaleLocalizations).title}  ::::'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.translate),
          onPressed: () {
            switchLanguage(context);
          },
        ),
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
          isScrollable: true,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Color.fromRGBO(229, 229, 229, 1),
          ),
          indicatorColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.white60,
          unselectedLabelStyle: TextStyle(fontSize: 11),
          labelColor: Colors.black87,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [WidgetLocalizationsPage(), MaterialLocalizationsPage(), CupertinoLocalizationsPage()],
      ),
    );
  }
}
