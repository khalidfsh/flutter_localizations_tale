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
  Random randomGenrator = Random();

  static const _tabs = <Tab>[
    Tab(text: 'WidgetsLocalizations'),
    Tab(text: 'MaterialLocalizations'),
    Tab(text: 'CupertinoLocalizations'),
  ];


  TabController _tabController;

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
    int langaugIndex =
        randomGenrator.nextInt(kAppSupportedLanguageInfos.length);
    widget.onLocaleChange(
        Locale(kAppSupportedLanguageInfos[langaugIndex]['languageCode']));
  }

  Widget bulidLanguageNameLable() {
    TextDirection _direction = WidgetsLocalizations.of(context).textDirection;
    return Padding(
      padding: _direction == TextDirection.ltr
          ? EdgeInsets.only(top: 10, right: 15)
          : EdgeInsets.only(top: 10, left: 15),
      child: Text(
        '${Localizations.of<TaleLocalizations>(context, TaleLocalizations).language}',
      ),
    );
  }

  Widget buildLangaugeSwitcherButton() {
    return IconButton(
      icon: Hero(
        tag: '_',
        child: Icon(
          Icons.translate,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: buildLangaugeSwitcherButton(),
        title: Text('🌍  ${TaleLocalizations.of(context).title}'),
        centerTitle: false,
        actions: <Widget>[bulidLanguageNameLable()],
        elevation: 5,
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
          indicatorWeight: 2,
          isScrollable: true,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 100),
          indicatorColor: Colors.black,
          unselectedLabelColor: Colors.black54,
          unselectedLabelStyle: TextStyle(fontSize: 10),
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
