import 'package:flutter/material.dart';
import './textstyle.dart';
import 'package:tweet_webview/tweet_webview.dart';

class Lainnya extends StatefulWidget {
  Lainnya({Key key}) : super(key: key);

  @override
  _LainnyaState createState() => _LainnyaState();
}

class _LainnyaState extends State<Lainnya> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Tweet WebView Example 1'),
      // ),1110597596437897216
       body: _buildBody(),
    );}

    Widget _buildBody() {
    final tweets = ['1085730010629980160', '1050610576064278528', '1050610378093125634',];

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