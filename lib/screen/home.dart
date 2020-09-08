import 'package:flutter/material.dart';
import 'package:kakaochatbotcompany/widget/my_floating_action_button.dart';
import 'package:kakaochatbotcompany/widget/mydrawer.dart';

class Home extends StatefulWidget{

  _Home createState() => _Home();
}

class _Home extends State<Home>{
  final String title = "Proto Com";

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
          title: Text(title, style: TextStyle(color: Colors.black),)
          ,centerTitle: true,),
          body: Center(),
          drawer: MyDrawer(),
      floatingActionButton: MyFloatingActionButton(),
      );
  }

}

