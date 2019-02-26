import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import './Mitigasi.dart';
import './Tahapanevakuasi.dart';
import './Laporkan.dart';
import './Info.dart';
import './Video.dart';
import './Berita.dart';

// void main() {
//   runApp(new MaterialApp(
//     home: new HomePage(),
//     routes: <String, WidgetBuilder>{
//       '/Edukasi': (BuildContext context) => new Edukasi()
//     },
//   ));
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("SIBAT"),),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            
            new ListTile(
              trailing: new Icon(Icons.home),
              title: new Text("Beranda"),
               onTap: () {
                        Route route = MaterialPageRoute(builder:(context) => HomePage());
                        Navigator.push(context, route);
                      },
                ),

            new Divider(),

            new ListTile(
              title: new Text("Mitigasi Tsunami"),
              trailing: new Icon(Icons.rowing),
               onTap: () {
                        Route route = MaterialPageRoute(builder:(context) => Mitigasi());
                        Navigator.push(context, route);
                      },
            ),

            new Divider(),

            new ListTile(
              title: new Text("Tahapan Evakuasi"),
              trailing: new Icon(Icons.new_releases),
               onTap: () {
                        Route route = MaterialPageRoute(builder:(context) => Tahapanevakuasi());
                        Navigator.push(context, route);
                      },
            ),

            new Divider(),

             new ListTile(
              title: new Text("Laporkan"),
              trailing: new Icon(Icons.new_releases),
               onTap: () {
                        Route route = MaterialPageRoute(builder:(context) => Laporkan());
                        Navigator.push(context, route);
                      },
            ),

            new Divider(),

             new ListTile(
              title: new Text("Info"),
              trailing: new Icon(Icons.new_releases),
               onTap: () {
                        Route route = MaterialPageRoute(builder:(context) => Info());
                        Navigator.push(context, route);
                      },
            ),

            new Divider(),

            new ListTile(
              title: new Text("Video"),
              trailing: new Icon(Icons.new_releases),
               onTap: () {
                        Route route = MaterialPageRoute(builder:(context) => Video());
                        Navigator.push(context, route);
                      },
            ),
             
              new Divider(),

            new ListTile(
              title: new Text("Berita"),
              trailing: new Icon(Icons.new_releases),
               onTap: () {
                        Route route = MaterialPageRoute(builder:(context) => Berita());
                        Navigator.push(context, route);
                      },
            ),

          ],
        ),
      ),
      
         body: new FlutterMap(
        options: new MapOptions(
          center: new LatLng(-8.1333515, 110.553994,),
          minZoom: 10.0
        ),
        layers:[
          new TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a','b','c']),
            new MarkerLayerOptions(
              markers: [
                new Marker(
                  width: 45.0,
                  height: 45.0,
                  point: new LatLng(-8.1333515, 110.553994),
                  builder: (context) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      color: Colors.blue,
                      iconSize: 45.0,
                      onPressed: () {
                        Route route = MaterialPageRoute(builder:(context) => PageImage());
                        Navigator.push(context, route);
                      },
                    ),
                  ))
              ])
        ])
        // child: new Text("Home Page",style: new TextStyle(fontSize: 35.0),),
      );
  }
}

class PageImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text('Image'),
      ),
      
    );
  }
}