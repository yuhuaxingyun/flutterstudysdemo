import 'package:flutter/material.dart';

class TopAppBar extends AppBar {
  TopAppBar(
      BuildContext context,
      String titleName,
      {
        bool isCenterTitle = true,
        final actions,
        final backIcon = const Icon(Icons.arrow_back_ios, color: Colors.grey,),
        final String rightText = '菜单',
        final rightCallback,
      }
      ):super (
    title: Text(titleName),
    leading: IconButton(
        icon: backIcon, onPressed: ()=>Navigator.of(context).pop()
    ),
    centerTitle: isCenterTitle,
    actions: <Widget>[
      Padding (
        padding: EdgeInsets.only(right: 10.0),
        child : Center(
          child : GestureDetector(
            onTap: (){
              rightCallback();
            },
            child:Text(rightText),
          ),
        ),
      ),
    ],
  );
}