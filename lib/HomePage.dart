import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import './Mitigasi.dart';
import './Tahapanevakuasi.dart';
import './Laporkan.dart';
import './Info.dart';
import './Video.dart';
import './Berita.dart';
import './pageImage.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import './MapData.dart';
import './textstyle.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

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
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: new Builder(builder: (context) {
        //   return new FloatingActionButton(
        //     onPressed: () {
        //             Route route =
        //                 MaterialPageRoute(builder: (context) => Berita());
        //             Navigator.push(context, route);
        //           },
        //     child: new Icon(Icons.new_releases),
        //   );

        // }),
        // bottomNavigationBar: new BottomAppBar(
        //     child: new Container(
        //   height: 40.0,
        //   color: Colors.white,
        // )),

        appBar: new AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: new Text(
            'SIBAT',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        drawer: new Drawer(
          child: Container(
            // color: const Color(0xff363f48),
            color: Colors.blue,
            child: new ListView(
              children: <Widget>[
                new ListTile(
                  title: new Text(
                    "Peta",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  leading: new Icon(
                    Icons.map,
                    color: Colors.white,
                  ),
                  selected: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => HomePage());
                    Navigator.push(context, route);
                  },
                ),
                // new Divider(color: Colors.white,),
                new ListTile(
                  title: new Text(
                    "Mitigasi Tsunami",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  leading: new Icon(
                    Icons.rowing,
                    color: Colors.white,
                  ),
                  selected: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => Mitigasi());
                    Navigator.push(context, route);
                  },
                ),
                // new Divider(color: Colors.white,),
                new ListTile(
                  title: new Text(
                    "Tahapan Evakuasi",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  leading: new Icon(
                    Icons.directions_run,
                    color: Colors.white,
                  ),
                  selected: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => Tahapanevakuasi());
                    Navigator.push(context, route);
                  },
                ),
                // new Divider(color: Colors.white,),
                new ListTile(
                  title: new Text(
                    "Laporkan",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  leading: new Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  selected: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => Laporkan());
                    Navigator.push(context, route);
                  },
                ),
                // new Divider(),
                // new ListTile(
                //   title: new Text("Info"),
                //   leading: new Icon(Icons.info),
                //   onTap: () {
                //     Route route = MaterialPageRoute(builder: (context) => Info());
                //     Navigator.push(context, route);
                //   },
                // ),
                // new Divider(color: Colors.white,),
                new ListTile(
                  title: new Text(
                    "Video",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  leading: new Icon(
                    Icons.videocam,
                    color: Colors.white,
                  ),
                  selected: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => Video());
                    Navigator.push(context, route);
                  },
                ),
                // new Divider( color: Colors.white,),
                new ListTile(
                  title: new Text(
                    "Berita",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  leading: new Icon(
                    Icons.new_releases,
                    color: Colors.white,
                  ),
                  selected: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => Berita());
                    Navigator.push(context, route);
                  },
                ),
                // new Divider(color: Colors.white,),
              ],
            ),
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
