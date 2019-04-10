import 'package:flutter/material.dart';
import './Kontak.dart';
import './separator.dart';
import './textstyle.dart';
import 'package:url_launcher/url_launcher.dart';

class KontakRow extends StatelessWidget {

  final Kontak kontak;
 
  KontakRow(this.kontak);

  @override
  Widget build(BuildContext context) {

    final kontakThumbnail = new Container(
     margin: new EdgeInsets.symmetric(
       vertical: 16.0
     ),
     alignment: FractionalOffset.centerLeft,
     child: new Image(
       image: new AssetImage(kontak.image),
       height: 92.0,
       width: 92.0,
    ),
  );

  final kontakCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(kontak.name,
            style: Style.headerTextStyle,
          ),
          new Container(height: 10.0),
          new Text(kontak.location,
            style: Style.commonTextStyle

          ),
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: new Color(0xff00c6ff)
          ),
        ],
      ),
    );

  final kontakCard = new Container(
    child: kontakCardContent,
     height: 145.0,
     margin: new EdgeInsets.only(left: 46.0),
     decoration: new BoxDecoration(
       color: Colors.white,
       shape: BoxShape.rectangle,
       borderRadius: new BorderRadius.circular(8.0),
       boxShadow: <BoxShadow>[
         new BoxShadow(  
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(10.0, 10.0),
        ),
      ],
    ),
  );


    
    return new Material(

      child: new InkWell(

        onTap: () => launch(kontak.telephone),

        child: new Container(

        margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          kontakCard,
          kontakThumbnail,
        ],
      )

      )

      )     

    );
  }
}