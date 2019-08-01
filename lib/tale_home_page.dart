import 'dart:math';

import 'package:flutter/material.dart';

import './tale_localizations.dart';
import './TabViewPages/all_pages.dart';
import './languages_page.dart';

class TaleHomePage extends StatefulWidget {
  TaleHomePage({Key key, this.onLocaleChange}) : super(key: key);

  final Function onLocaleChange;

  _TaleHomePageState createState() => _TaleHomePageState();
}

class _TaleHomePageState extends State<TaleHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  Random randomGenrator = Random();

  final List<Tab> _tabs = <Tab>[
    Tab(text: 'WidgetsLocalizations'),
    Tab(text: 'MaterialLocalizations'),
    Tab(text: 'CupertinoLocalizations'),
  ];

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  void onGenerateRandomLanguage() {
    int langaugIndex = randomGenrator.nextInt(kAppSupportedLanguageInfos.length);
    widget.onLocaleChange(Locale(kAppSupportedLanguageInfos[langaugIndex]['languageCode']));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${Localizations.of<TaleLocalizations>(context, TaleLocalizations).title}   🌍',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        centerTitle: false,
        actions: <Widget>[
          Padding(
            padding: (WidgetsLocalizations.of(context).textDirection ==
                    TextDirection.ltr)
                ? EdgeInsets.only(right: 15)
                : EdgeInsets.only(left: 15),
            child: Text(
              '${Localizations.of<TaleLocalizations>(context, TaleLocalizations).language}',
              style: TextStyle(color: Colors.white30, fontSize: 18),
            ),
          ),
        ],
        elevation: 0,
        leading: IconButton(
          icon: Hero(
            tag: '_',
            child: Icon(
              Icons.translate,
              color: Theme.of(context).accentColor,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (_) => LanguagesPage(
                  onLocaleChange: widget.onLocaleChange,
                  onGenerateRandomLanguage: onGenerateRandomLanguage,
                ),
              ),
            );
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
          unselectedLabelStyle: TextStyle(fontSize: 12),
          labelColor: Colors.black87,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          WidgetLocalizationsPage(),
          MaterialLocalizationsPage(),
          CupertinoLocalizationsPage(),
        ],
      ),
    );
  }
}
