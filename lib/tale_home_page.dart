import 'package:flutter/material.dart';

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
        title: Text('🌍(${Localizations.localeOf(context).toString()}):'),
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
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabs
            .map(
              (tab) => Center(child: tab),
            )
            .toList(),
      ),
    );
  }
}
