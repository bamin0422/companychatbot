import 'package:flutter/material.dart';
import 'package:kakaochatbotcompany/widget/my_floating_action_button.dart';
import 'package:kakaochatbotcompany/widget/mydrawer.dart';

class ProcessingTeam extends StatefulWidget{

  _ProcessingTeam createState() => _ProcessingTeam();
}

class _ProcessingTeam extends State<ProcessingTeam>{
  final String title = "가공사업부";

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
              Tab(text: '가공'),
              Tab(text: '제작사례'),
      ]),
    ),
          body: TabBarView(children: [
            Text('가공'),
            Text('제작사례'),
          ],),
          drawer: MyDrawer(),
        floatingActionButton: MyFloatingActionButton(),
      ), length: 2,
    );
  }

}