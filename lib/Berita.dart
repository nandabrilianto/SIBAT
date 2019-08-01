import 'package:flutter/material.dart';
import './Tsunami.dart' as tsunami;
import './Nontsunami.dart' as nontsunami;
import './Lainnya.dart' as lainnya;
import 'package:flutter/material.dart';
import './Mitigasi.dart';
import './Tahapanevakuasi.dart';
import './Laporkan.dart';
import './Video.dart';
import './Peta.dart';

class Berita extends StatefulWidget {
  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Berita> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          title: new Text(
            "Berita Gempa Bumi",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          bottom: new TabBar(controller: controller, tabs: <Widget>[
            new Tab(
              icon: new Text('Berpotensi Tsunami', textAlign: TextAlign.center),
            ),
            new Tab(
              icon: new Text('Tidak Berpotensi Tsunami',
                  textAlign: TextAlign.center),
            ),
            new Tab(
              icon: new Text('Lainnya', textAlign: TextAlign.center),
            )
          ])),
      drawer: new Drawer(
        child: Container(
          color: const Color(0xff2ea7df),
          // color: Colors.blue,
          child: new ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: ExactAssetImage('images/sibat.png'),
                  fit: BoxFit.fitHeight,
                )),
              ),
              new Center(
                child: new Text('SIBAT v1.0',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                onTap: () {
                  Route route = MaterialPageRoute(builder: (context) => Peta());
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Video());
                  Navigator.push(context, route);
                },
              ),
              // new Divider( color: Colors.white,),
              // new ListTile(
              //   title: new Text(
              //     "Berita",
              //     style: TextStyle(
              //       fontFamily: 'Montserrat',
              //       color: Colors.white,
              //       fontSize: 16.0,
              //     ),
              //   ),
              //   leading: new Icon(
              //     Icons.new_releases,
              //     color: Colors.white,
              //   ),
              //   selected: true,
              //   contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              //   onTap: () {
              //     Route route =
              //         MaterialPageRoute(builder: (context) => Berita());
              //     Navigator.push(context, route);
              //   },
              // ),
              // new Divider(color: Colors.white,),
            ],
          ),
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new tsunami.Tsunami(),
          new nontsunami.Nontsunami(),
          new lainnya.Lainnya(),
        ],
      ),
    );
  }
}
