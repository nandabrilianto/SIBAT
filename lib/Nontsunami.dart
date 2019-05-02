import 'package:flutter/material.dart';
import './textstyle.dart';
import 'package:tweet_webview/tweet_webview.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Nontsunami extends StatefulWidget {
  @override
  _NontsunamiState createState() => _NontsunamiState();
}

class _NontsunamiState extends State<Nontsunami> {

List dataTsunami;

Future<String> getTsunamiData() async {
  http.Response data = await http.get(Uri.encodeFull("http://207.148.71.247/get_data_nontsunami.php")
  );

  this.setState((){
    dataTsunami = jsonDecode(data.body);
  });
}

@override
  void initState() {
    this.getTsunamiData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
        itemCount: dataTsunami == null ? 0 : dataTsunami.length,
        itemBuilder: (context,index){
          return new Card(child: TweetWebView.tweetID(dataTsunami[index]['tweet_id']),);
        },

      ),
    );
  }
}