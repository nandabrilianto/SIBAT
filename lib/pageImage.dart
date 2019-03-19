import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ui_splash_screen/LocationImage.dart';
import 'package:http/http.dart' as http;

class pageImage extends StatefulWidget {
  final String pointId;
  pageImage({Key key, @required this.pointId}) : super(key: key);

  @override
  _pageImageState createState() => _pageImageState();
}

class _pageImageState extends State<pageImage> {
  List<String> imageUrlList;
  Future<List<LocationImage>> imageList;

  String baseImageUrl = 'http://www.maps.sibatugm.org/uploads/';

  @override
  void initState() {
    super.initState();
    imageUrlList = new List();
    imageList = getImages();
  }

  Future<List<LocationImage>> getImages() async {
    final response = await http.get(
        "https://www.sibatugm.org/api/get_image.php?point_id=" +
            widget.pointId);
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      Iterable list = json.decode(response.body);
      return list.map((model) => LocationImage.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load images');
    }
  }

  int photoIndex = 0;
  int imageCount = 0;

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

void _nextImage(){
  setState(() {
   photoIndex =photoIndex < imageCount - 1 ? photoIndex + 1 : photoIndex;
  });
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Gambar'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: FutureBuilder<List<LocationImage>>(
                  future: imageList,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      imageCount =snapshot.data.length;
                      for (LocationImage locationImage in snapshot.data) {
                        imageUrlList.add(baseImageUrl +
                                          correctImageName(
                                              locationImage.image));
                      }
                      return Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  image: DecorationImage(
                                      image: NetworkImage(imageUrlList[photoIndex]),
                                      fit: BoxFit.cover)),
                              height: 400.0,
                              width: 300.0,
                            ),
                            Positioned(
                              top: 375.0,
                              left: 25.0,
                              right: 25.0,
                              child: selectedPhoto(
                                numberOfDots: snapshot.data.length,
                                photoIndex: photoIndex,
                              ),
                            )
                          ],
                        );
                    }
                    return CircularProgressIndicator();
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Mundur', style: TextStyle(color: Colors.white),),
                onPressed: _previousImage,
                elevation: 5.0,
                color: Colors.blue,
              ),
              SizedBox(width: 10.0),
              RaisedButton(
                child: Text('Maju', style: TextStyle(color: Colors.white),),
                onPressed: _nextImage,
                elevation: 5.0,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }

  String correctImageName(String imageNameFromApi) {
    return imageNameFromApi.replaceAll(new RegExp(r' '), '%20');
  }
}

class selectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  selectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
      child: new Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
