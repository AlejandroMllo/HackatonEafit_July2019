import 'package:flutter/material.dart';
import 'Learn.dart';
import 'StepsScreen.dart';
import 'Emergency.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key key }) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  final List<StatefulWidget> myTabs = <StatefulWidget>[
    LearnScreen(),
    StepsScreen(),
    EmergencyScreen(),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cultura GRD', textAlign: TextAlign.center,),
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabController,
          // tabs: myTabs,
          tabs: [
            Tab(text: 'Aprende',),
            Tab(text: 'Paso a Paso',),
            Tab(text: 'Emergencia',)
          ]
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((StatefulWidget screen) {
          return Scaffold(
            body: screen,
          );
        }).toList(),
      ),
    );
  }
}