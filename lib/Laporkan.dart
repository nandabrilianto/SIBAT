import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './HomePageBody.dart';

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

  final List<String> nama = [
    "PMI",
    "Pemadam Kebakaran Gunung Kidul",
    "BPDB Gunung Kidul",
    "SAR Gunung Kidul",
    "Pemerintah Gunung Kidul"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: new Text('Laporkan',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
      ),

      body: new Column(
        children: <Widget>[
          new HomePageBody(),
        ],
      ),

      // body: new Container(
      //   child: new PageView.builder(
      //     controller: new PageController(viewportFraction: 0.8),
      //     itemCount: logo.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       return Padding(
      //         padding:
      //             new EdgeInsets.symmetric(horizontal: 10.0, vertical: 128.0),
      //         child: Material(
      //           type: MaterialType.transparency,
      //           elevation: 20.0,
      //           child: new Stack(
      //             fit: StackFit.expand,
      //             children: <Widget>[
      //               Center(
      //                 child: new Hero(
      //                   tag: logo[index],
      //                   child: new SizedBox(
      //                     width: 220.0,
      //                     height: 220.0,
      //                     child: new Material(
      //                       child: new InkWell(
      //                         onTap: () => launch(telephone[index]),
      //                         child: new Image.asset(
      //                           logo[index],
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               // Text(
      //               //   nama[index],
      //               //   style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
      //               //   textAlign: TextAlign.center,
      //               // ),
      //             ],
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
