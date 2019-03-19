import 'package:flutter/material.dart';

class Laporkan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Laporkan"),
      ),
      body: 
      new ListView(
        children: <Widget>[
          new ListKontak(
            gambar:
                "https://www.sibatugm.org/wp-content/uploads/2018/09/iconPmi.png",
            judul: "PMI Gunung Kidul",
            nomor: "0274 394500 | 391233",
          ),
          new ListKontak(
            gambar:
                "https://www.sibatugm.org/wp-content/uploads/2018/09/iconDamkarGunungKidul.jpg",
            judul: "Damkar Gunung Kidul",
            nomor: "0274 587101",
          ),
          new ListKontak(
            gambar:
                "https://www.sibatugm.org/wp-content/uploads/2018/09/iconBPBDGunungKidul.jpg",
            judul: "BPBD Gunung Kidul",
            nomor: "0274 394091",
            
          ),
          new ListKontak(
            gambar:
                "https://www.sibatugm.org/wp-content/uploads/2018/09/iconSarGunungKidul.png",
            judul: "SAR Gunung Kidul",
            nomor: "0274 563231 | 562811",
          ),

          new ListKontak(
            gambar:
                "https://www.sibatugm.org/wp-content/uploads/2018/09/iconPemerintahGunungKidul.png",
            judul: "Pemkab Gunung Kidul",
            nomor: "0274 391761",
          ),
          
        ],
      ),
    );
  }
}

class ListKontak extends StatelessWidget {
  ListKontak({this.gambar, this.judul, this.nomor});
  final String gambar;
  final String judul;
  final String nomor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(25.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(gambar),
              width: 80.0,
            ),
            new Container(
              padding: new EdgeInsets.only(left: 40.0),
              // child: new Center(
                child: new Column(
                children: <Widget>[
                  new Text(
                    judul,
                    style: new TextStyle(fontSize: 17.0), 
                  ),

                  new Text(
                    nomor,
                    style: new TextStyle(fontSize: 14.0),
                  )
                ],
              )),
            // )
          ],
        ),
      ),
    );
  }
}
