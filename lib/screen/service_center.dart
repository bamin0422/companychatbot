import 'package:flutter/material.dart';
import 'package:kakaochatbotcompany/widget/my_floating_action_button.dart';
import 'package:kakaochatbotcompany/widget/mydrawer.dart';

class ServiceCenter extends StatelessWidget{

  final String title = "고객센터";
  final int initialIndex;
  ServiceCenter({Key key, this.initialIndex}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialIndex??0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(title, style: TextStyle(color: Colors.black),), centerTitle: true,
          bottom: TabBar(
              tabs: [
                Tab(text: '공지사항'),
                Tab(text: '1:1 채팅'),
                Tab(text: '온라인문의'),
              ]),
        ),
        body: TabBarView(children: [
          Text('공지사항'),
          Text('1:1 채팅'),
          Text('온라인문의'),
        ],),
        drawer: MyDrawer(),
        floatingActionButton: MyFloatingActionButton(),
      ),
    );
  }
}