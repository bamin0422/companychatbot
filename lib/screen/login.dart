import 'package:flutter/material.dart';
import 'package:kakaochatbotcompany/widget/my_floating_action_button.dart';
import 'package:kakaochatbotcompany/widget/mydrawer.dart';

class Login extends StatefulWidget{

  _Login createState() => _Login();
}

class _Login extends State<Login>{
  final String title = "Login";

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
      floatingActionButton: MyFloatingActionButton(),
      );
  }

}

