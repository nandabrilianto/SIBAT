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
      // ),1110597596437897216
       body: _buildBody(),
    );}

    Widget _buildBody() {
    final tweets = ['1110597596437897216', '1110597596437897216', '1110597596437897216', '1110597596437897216'];

    final list = ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      itemCount: tweets.length,
      itemBuilder: (context, index) {
        var tweetID = tweets[index];
        return Card(
          child: TweetWebView.tweetID(tweetID),
        );
      },
    );

    final container = Container(
        color: Colors.black26,
        child: Center(child: list)
    );

    return container;

  }
  }