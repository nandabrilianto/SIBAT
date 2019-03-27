import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Laporkan extends StatefulWidget {
  @override
  _LaporkanState createState() => _LaporkanState();
}

class _LaporkanState extends State<Laporkan> {
  final List<String> logo = [
    "images/iconPmi.png",
    "images/iconDamkarGunungKidul.png",
    "images/iconBPBDGunungKidul.png",
    "images/iconSarGunungKidul.png",
    "images/iconPemerintahGunungKidul.png"
  ];

  final List<String> telephone = [
    "tel://0274394500",
    "tel://0274587101",
    "tel://0274394091",
    "tel://0274563231",
    "tel://0274391761"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: new Text("Laporkan"),
      ),
      body: new Container(
        // decoration: new BoxDecoration(
        //     image: DecorationImage(
        //   image: AssetImage('images/wave.jpg'),
        //   fit: BoxFit.cover,
        // )),
        child: new PageView.builder(
          controller: new PageController(viewportFraction: 0.8),
          itemCount: logo.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  new EdgeInsets.symmetric(horizontal: 10.0, vertical: 128.0),
              child: Material(
                type: MaterialType.transparency,
                elevation: 8.0,
                child: new Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Center(
                      child: new Hero(
                        tag: logo[index],
                        child: new SizedBox(
                          width: 220.0,
                          height: 220.0,
                          child: new Material(
                            child: new InkWell(
                              onTap: () => launch(telephone[index]),
                              child: new Image.asset(
                                logo[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Text(
                      'PMI',
                      style: TextStyle(fontSize: 16.0),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
