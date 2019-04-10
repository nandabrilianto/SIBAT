import 'package:flutter/material.dart';

class Tsunami extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("Berpotensi tsunami", style: new TextStyle(fontSize: 15.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
          ],
        ),
      ),
    );
  }
}