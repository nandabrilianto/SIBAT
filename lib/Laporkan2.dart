import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Laporkan2 extends StatefulWidget {
  @override
  _Laporkan2State createState() => _Laporkan2State();
}

class _Laporkan2State extends State<Laporkan2> {
  final List<String> logo = [
    "https://www.sibatugm.org/wp-content/uploads/2018/09/iconPmi.png",
    "https://www.sibatugm.org/wp-content/uploads/2018/09/iconDamkarGunungKidul.jpg",
    "https://www.sibatugm.org/wp-content/uploads/2018/09/iconBPBDGunungKidul.jpg",
    "https://www.sibatugm.org/wp-content/uploads/2018/09/iconSarGunungKidul.png",
    "https://www.sibatugm.org/wp-content/uploads/2018/09/iconPemerintahGunungKidul.png"
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
      backgroundColor: Colors.transparent,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: new Text("Laporkan"),
      ),
      body: new Container(
        decoration: new BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/wave.jpg'),
          fit: BoxFit.cover,
        )),
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
                              child: new Image.network(
                                logo[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
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
