import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import './Mitigasi.dart';
import './Tahapanevakuasi.dart';
import './Laporkan.dart';
import './Laporkan2.dart';
import './Info.dart';
import './Video.dart';
import './Berita.dart';
import './pageImage.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import './MapData.dart';

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
  Future<List<MapData>> mapDataList;
  List<Marker> markerList;

  @override
  void initState() {
    super.initState();
    markerList = new List();
    mapDataList = getMapData();
  }

  Future<List<MapData>> getMapData() async {
    final response =
        await http.get("https://www.sibatugm.org/api/get_data.php");
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      Iterable list = json.decode(response.body);
      return list.map((model) => MapData.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: new Builder(builder: (context) {
          return new FloatingActionButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: new Icon(Icons.menu),
          );
        }),
        bottomNavigationBar: new BottomAppBar(
            child: new Container(
          height: 40.0,
          color: Colors.white,
        )),
        // appBar: new AppBar(
        //   backgroundColor: Colors.blue,
        //   title: new Center(
        //     child: new Text("SIBAT"),
        //   ),
        // ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new ListTile(
                trailing: new Icon(Icons.map),
                title: new Text("Peta"),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => HomePage());
                  Navigator.push(context, route);
                },
              ),
              new Divider(),
              new ListTile(
                title: new Text("Mitigasi Tsunami"),
                trailing: new Icon(Icons.rowing),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Mitigasi());
                  Navigator.push(context, route);
                },
              ),
              new Divider(),
              new ListTile(
                title: new Text("Tahapan Evakuasi"),
                trailing: new Icon(Icons.directions_run),
                onTap: () {
                  Route route = MaterialPageRoute(
                      builder: (context) => Tahapanevakuasi());
                  Navigator.push(context, route);
                },
              ),
              new Divider(),
              new ListTile(
                title: new Text("Laporkan"),
                trailing: new Icon(Icons.announcement),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Laporkan2());
                  Navigator.push(context, route);
                },
              ),
              // new Divider(),
              // new ListTile(
              //   title: new Text("Info"),
              //   trailing: new Icon(Icons.info),
              //   onTap: () {
              //     Route route = MaterialPageRoute(builder: (context) => Info());
              //     Navigator.push(context, route);
              //   },
              // ),
              new Divider(),
              new ListTile(
                title: new Text("Video"),
                trailing: new Icon(Icons.videocam),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Video());
                  Navigator.push(context, route);
                },
              ),
              new Divider(),
              new ListTile(
                title: new Text("Berita"),
                trailing: new Icon(Icons.import_contacts),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Berita());
                  Navigator.push(context, route);
                },
              ),
              new Divider(),
            ],
          ),
        ),
        body: Center(
            child: FutureBuilder<List<MapData>>(
                future: mapDataList,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    for (MapData mapData in snapshot.data) {
                      markerList.add(new Marker(
                          width: 45.0,
                          height: 45.0,
                          point: new LatLng(double.parse(mapData.latitude),
                              double.parse(mapData.longitude)),
                          builder: (context) => new Container(
                                child: IconButton(
                                  icon: Icon(Icons.location_on),
                                  color: Colors.blue,
                                  iconSize: 45.0,
                                  onPressed: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) => pageImage(
                                              pointId: mapData.id,
                                            ));
                                    Navigator.push(context, route);
                                  },
                                ),
                              )));
                    }
                    return FlutterMap(
                        options: new MapOptions(
                            center: new LatLng(
                              -8.1333515,
                              110.553994,
                            ),
                            minZoom: 10.0),
                        layers: [
                          new TileLayerOptions(
                              urlTemplate:
                                  "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                              subdomains: ['a', 'b', 'c']),
                          new MarkerLayerOptions(markers: markerList)
                        ]);
                  }
                  return CircularProgressIndicator();
                })));
  }
}
