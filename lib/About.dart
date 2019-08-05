import 'package:flutter/material.dart';
import './textstyle.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text(
          'Mitigasi Tsunami',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: new Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: new SingleChildScrollView(
            child: new ConstrainedBox(
              constraints: new BoxConstraints(),
              child: new Column(
                children: <Widget>[
                  // new Text(
                  //   "\nMitigasi Tsunami \n",
                  //   textAlign: TextAlign.center,
                  //   style: new TextStyle(fontSize: 46.0, fontFamily: 'Montserrat', letterSpacing: 1.0, fontWeight: FontWeight.bold, color: Colors.black),
                  // ),
                  new Text(
                    "\n"
                  ),
                  new Image.asset('images/sibat.png'),

                  new Text(
                   "\nSistem Informasi Bahaya Tsunami (SIBAT) adalah media informasi berupa Informasi tentang pengedukasian bencana tsunami berbasis data Geospasial, peta bencana tsunami, peta evakuasi tsunami dan mitigasi bencana tsunami.",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\n\nMitra Kerjasama\n",
                    textAlign: TextAlign.center,
                    style: Style.titleTextStyle,
                  ),

                  new Image.asset('images/bpbdicon.jpg'),
                  new Text(
                    "\nBadan Penanggulangan Bencana Daerah Kabupaten Gunungkidul\n",
                    textAlign: TextAlign.center,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "Alamat : Kompleks Bangsal Sewokoprojo, Kabupaten Gunungkidul 55812\nEmail : bpbdgunungkidul@yahoo.co.id\nTelp. : 0274 394091\nWebsite : http://bpbdgunungkidul.blogspot.com\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "Mitra Penyedia Data\n",
                    textAlign: TextAlign.center,
                    style: Style.titleTextStyle,
                  ),

                  new Image.asset('images/bpbdicon.jpg'),
                  new Text(
                    "\nBadan Penanggulangan Bencana Daerah Kabupaten Gunungkidul\n",
                    textAlign: TextAlign.center,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\nAlamat : Kompleks Bangsal Sewokoprojo, Kabupaten Gunungkidul 55812\nEmail : bpbdgunungkidul@yahoo.co.id\nTelp. : 0274 394091\nWebsite : http://bpbdgunungkidul.blogspot.com\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),

                  new Image.asset('images/logougm.jpg'),
                  new Text(
                    "\nPusat Studi Bencana Alam UGM\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "Alamat : Jalan Mahoni C 16 Bulaksumur, Yogyakarta, 55284\nEmail : psba_ugm@yahoo.com | psba@ugm.ac.id\nTelp. : 0274-548812\nWebsite : http://psba.ugm.ac.id/\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),

                  new Image.asset('images/openstreetmap.png'),
                  new Text(
                    "\nOpen Street Map\n",
                    textAlign: TextAlign.center,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "Website : www.openstreetmap.org\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),

                   new Text(
                    "\nTim Pengembang",
                    textAlign: TextAlign.center,
                    style: Style.titleTextStyle,
                  ),

                  new Image.asset('images/logougm.jpg'),
                  new Text(
                    "\nFakultas Teknik Universitas Gadjah Mada\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\nAlamat : Jl. Grafika No. 2 Kampus UGM, Yogyakarta 55281\nEmail : teknik@ugm.ac.id\nTelp. : +62-274-513665 | 6492194\nWebsite : http://ft.ugm.ac.id\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "\nFakultas Geografi Universitas Gadjah Mada\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),
                  new Text(
                    "Alamat : Sekip Utara, Bulaksumur, Yogyakarta 55281\nEmail : geografi@geo.ugm.ac.id\nTelp. : +62-274-6492340| 589595\nWebsite : http://geo.ugm.ac.id\n",
                    textAlign: TextAlign.left,
                    style: Style.commonTextStyle,
                  ),

                    ],
              ),
            ),
          )),
    );
  }
}