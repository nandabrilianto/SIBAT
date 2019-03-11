class LocationImage {
  final String image;

  LocationImage({this.image});

  factory LocationImage.fromJson(Map<String, dynamic> json) {
    return LocationImage(
      image: json['image']
    );
  }
}