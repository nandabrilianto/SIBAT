import 'package:flutter/material.dart';
import 'package:flutube/flutube.dart';
import './textstyle.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color(0xff328df8),
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Video",
          style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
      ),
      body: new Container(
        margin: EdgeInsets.all(20.0),
        child: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              Text(
                'Prakata Kepala BPBD Gunung Kidul DIY untuk Tim SIBAT',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),

              FluTube(
                'https://youtu.be/dzldrVwV99A',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

              Text(
                'Dokumentasi Kegiatan dan Training Tim SIBAT',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              FluTube(
                'https://youtu.be/xN_xFHKWpio',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

              Text(
                'Simulasi Peringatan Dini Gempa dan Tsunami Televisi Indonesia',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              FluTube(
                'https://youtu.be/PwW4bGJI5dQ',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

              Text(
                'Peringatan Dini Bencana Tsunami – GITNEWS ',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              FluTube(
                'https://youtu.be/KlYE_RKPkW8',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

              Text(
                'Prosedur Diseminasi Peringatan Dini Tsunami Pusdalops BPBD Kab. Bantul',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              FluTube(
                'https://youtu.be/i_LxiGKsCjA',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

              Text(
                'Jangan Berenang Di Pantai Jika Melihat Ombak Seperti Ini',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              FluTube(
                'https://youtu.be/nUGM2_FXFtE',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

              Text(
                '#1 Tsunami Preparedness',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              FluTube(
                'https://youtu.be/bleBYigKuKY',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

              Text(
                '#2 Tsunami Early Warning System',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              FluTube(
                'https://youtu.be/HsjPJdUsero',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

              Text(
                '#3 Tsunami Evacuation',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              FluTube(
                'https://youtu.be/fFl-S5iQ8Gk',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

              Text(
                '#4 Tsunami Survival Strategy',
                style: Style.titleTextStyle,
                textAlign: TextAlign.center,
              ),
              FluTube(
                'https://youtu.be/d3OGiPrbfqU',
                autoInitialize: true,
                aspectRatio: 16 / 9,
                allowMuting: false,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
