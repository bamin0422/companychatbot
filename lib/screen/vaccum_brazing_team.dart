import 'package:flutter/material.dart';
import 'package:kakaochatbotcompany/widget/my_floating_action_button.dart';
import 'package:kakaochatbotcompany/widget/mydrawer.dart';

class VaccumBrazingTeam extends StatefulWidget{

  _VaccumBrazingTeam createState() => _VaccumBrazingTeam();
}

class _VaccumBrazingTeam extends State<VaccumBrazingTeam>{
  final String title = "진공브레이징사업부";

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
              Tab(text: '진공브레이징'),
              Tab(text: '제작사례'),
      ]),
    ),
          body: TabBarView(children: [
            Text('진공브레이징'),
            Text('제작사례'),
          ],),
          drawer: MyDrawer(),
        floatingActionButton: MyFloatingActionButton(),
      ), length: 2,
    );
  }

}