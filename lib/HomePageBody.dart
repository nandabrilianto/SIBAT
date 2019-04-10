import 'package:flutter/material.dart';
import './KontakRow.dart';
import './Kontak.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new ListView.builder(
        itemBuilder: (context, index) => new KontakRow(kontaks[index]),
        itemCount: kontaks.length,
        padding: new EdgeInsets.symmetric(vertical: 16.0)
      ),
    );
  }
}