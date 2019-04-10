import 'package:flutter/material.dart';
import './Tsunami.dart' as tsunami;
import './Nontsunami.dart' as nontsunami;
class Berita extends StatefulWidget {
  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Berita> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Berita"),
      bottom: new TabBar( controller:controller,
      tabs: <Widget>[
        new Tab(icon: new Text('Berpotensi tsunami'), ),
        new Tab(icon: new Text('Tidak berpotensi tsunami', textAlign: TextAlign. center),)
      ]
      )
      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
      new tsunami.Tsunami(),
      new nontsunami.Nontsunami(),
        ],
        ),
    ); 
    }
}