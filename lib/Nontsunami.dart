import 'package:flutter/material.dart';
import './textstyle.dart';

class Nontsunami extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("Berpotensi tsunami", style: Style.headerTextStyle,),
            new Padding(padding: new EdgeInsets.all(20.0),),
          ],
        ),
      ),
    );
  }
}