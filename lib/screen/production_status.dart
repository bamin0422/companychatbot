import 'package:flutter/material.dart';
import 'package:kakaochatbotcompany/widget/my_floating_action_button.dart';
import 'package:kakaochatbotcompany/widget/mydrawer.dart';

class ProductionStatus extends StatefulWidget{

  _ProductionStatus createState() => _ProductionStatus();
}

class _ProductionStatus extends State<ProductionStatus>{
  final String title = "생산장비현황";

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
          title: Text(title, style: TextStyle(color: Colors.black),), centerTitle: true,
        bottom: TabBar(
            tabs: [
              Tab(text: '생산장비보유현황'),
              Tab(text: '연구검사계측기'),
      ]),
    ),
          body: TabBarView(children: [
            Text('생산장비보유현황'),
            Text('연구검사계측기'),
          ],),
          drawer: MyDrawer(),
        floatingActionButton: MyFloatingActionButton(),
      ), length: 2,
    );
  }

}