import 'package:flutter/material.dart';
import 'package:kakaochatbotcompany/widget/my_floating_action_button.dart';
import 'package:kakaochatbotcompany/widget/mydrawer.dart';

class Company extends StatefulWidget{

  _Company createState() => _Company();
}

class _Company extends State<Company>{
  final String title = "회사소개";

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
              Tab(text: '인사말'),
              Tab(text: '회사연혁'),
              Tab(text: '조직도'),
              Tab(text: '인증현황'),
              Tab(text: '오시는길'),
      ]),
    ),
          body: TabBarView(children: [
            Text('인사말'),
            Text('회사연혁'),
            Text('조직도'),
            Text('인증현황'),
            Text('오시는길'),
          ],),
          drawer: MyDrawer(),
        floatingActionButton: MyFloatingActionButton(),
      ), length: 5,
    );
  }

}

