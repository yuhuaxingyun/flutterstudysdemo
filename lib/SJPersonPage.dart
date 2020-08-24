import 'package:flutter/material.dart';
import 'package:flutterstudysdemo/pay/pay_page.dart';
import 'package:dio/dio.dart';

class PersonalPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PersonalState();
  }
}

class PersonalState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar (
        title: new Text("我的"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: null),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            RaisedButton(
              child: Text('支付',style: TextStyle(fontSize: 24),),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                  return PayPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}