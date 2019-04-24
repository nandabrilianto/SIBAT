import 'package:flutter/material.dart';
import './textstyle.dart';
import 'package:tweet_webview/tweet_webview.dart';

class Nontsunami extends StatefulWidget {
  Nontsunami({Key key}) : super(key: key);

  @override
  _NontsunamiState createState() => _NontsunamiState();
}

class _NontsunamiState extends State<Nontsunami> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Tweet WebView Example 1'),
      // ),
      body: TweetWebView.tweetID(
          '1110597596437897216'),
    );
  }
}