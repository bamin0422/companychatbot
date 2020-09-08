import 'package:flutter/material.dart';
import 'package:kakaochatbotcompany/screen/company.dart';
import 'package:kakaochatbotcompany/screen/home.dart';
import 'package:kakaochatbotcompany/screen/processing_team.dart';
import 'package:kakaochatbotcompany/screen/production_status.dart';
import 'package:kakaochatbotcompany/screen/service_center.dart';
import 'package:kakaochatbotcompany/screen/vaccum_brazing_team.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(

          padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
          children: <Widget>[
            DrawerHeader(
              child: Text('Proto Com',style: TextStyle(fontSize: 30),),
            ),
            ListTile(
              title: Text('홈'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context){
                  return Home();
                })
                );
              },
            ),
            ListTile(
              title: Text('회사소개'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context){
                  return Company();
                })
                );
              },
            ),
            ListTile(
              title: Text('진공브레이징사업부'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context){
                  return VaccumBrazingTeam();
                })
                );
              },
            ),
            ListTile(
              title: Text('가공사업부'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context){
                  return ProcessingTeam();
                })
                );
              },
            ),
            ListTile(
              title: Text('생산장비현황'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context){
                  return ProductionStatus();
                })
                );
              },
            ),
            ListTile(
              title: Text('고객센터'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context){
                  return ServiceCenter();
                })
                );
              },
            ),
          ],        ),
    );
  }

}