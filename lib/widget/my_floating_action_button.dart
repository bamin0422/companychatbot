import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakaochatbotcompany/screen/service_center.dart';
import 'package:kakaochatbotcompany/widget/mydrawer.dart';


class MyFloatingActionButton extends StatefulWidget {
  _MyFloatingActionButton createState() => _MyFloatingActionButton();
}

class _MyFloatingActionButton extends State<MyFloatingActionButton>{
  @override
  Widget build(BuildContext context) {
    return
        FloatingActionButton(
      backgroundColor: Colors.blue,
      child: Icon(Icons.add, color: Colors.white,),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title:
              Text('Proto Com', style: TextStyle(color: Colors.black),)
              ,centerTitle: true,
            ),
                floatingActionButton: Stack(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(bottom:160),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: Colors.yellow,
                        heroTag: "kakaobtn",
                        child: Icon(Icons.alternate_email, color: Colors.brown,),
                        onPressed: (){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context){
                              return ServiceCenter(initialIndex: 1,);
                            })
                            );
                        }))),
              Padding(padding: EdgeInsets.only(bottom:80),
                    child: Align(alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Colors.orange,
                heroTag: "emailbtn",
                child: Icon(Icons.email, color: Colors.white,),
                onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context){
                      return ServiceCenter(initialIndex: 2,);
                    })
                    );
                },
              ),)),
                    Align(alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: Colors.blue,
                        heroTag: "add",
                        child: Icon(Icons.add, color: Colors.white,),
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                      ),)]),
            drawer: MyDrawer(),
          );
        })
        );
      },
    );
  }
}