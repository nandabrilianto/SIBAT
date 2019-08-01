import 'package:flutter/material.dart';
import './textstyle.dart';
import 'package:tweet_webview/tweet_webview.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Nontsunami extends StatefulWidget {
  @override
  _NontsunamiState createState() => _NontsunamiState();
}

class _NontsunamiState extends State<Nontsunami> {
  List dataTsunami = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  Future<String> getTsunamiData() async {
    http.Response data = await http
        .get(Uri.encodeFull("http://207.148.71.247/get_data_nontsunami.php"));
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
          key: Key('list-view-non-tsunami'),
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
