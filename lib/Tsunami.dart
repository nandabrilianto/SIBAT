import 'package:flutter/material.dart';
import './textstyle.dart';
import 'package:tweet_webview/tweet_webview.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Tsunami extends StatefulWidget {
  @override
  _TsunamiState createState() => _TsunamiState();
}

class _TsunamiState extends State<Tsunami> {
  List dataTsunami = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  Future<String> getTsunamiData() async {
    http.Response data = await http
        .get(Uri.encodeFull("http://116.12.54.83/get_data_tsunami.php"));
    return data.body;
  }

  @override
  void initState() {
    super.initState();
    _handleRefresh();
  }

  Future<void> _handleRefresh() async {
    String body = await getTsunamiData();  
    setState(() {
      dataTsunami = jsonDecode(body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidPullToRefresh(
        showChildOpacityTransition: false,
        key: _refreshIndicatorKey,
        onRefresh: _handleRefresh,
        child: ListView.builder(
          key: Key('list-view-tsunami'),
          itemCount: dataTsunami.length,
          itemBuilder: (context, index) {
            return Card(
              key: Key(dataTsunami[index]['tweet_id'].toString()),
              child: TweetWebView.tweetID(dataTsunami[index]['tweet_id']),
            );
          },
        ),
      ),
    );
  }
}