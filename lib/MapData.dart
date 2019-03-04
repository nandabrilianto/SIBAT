class MapData {
  final String id;
  final String name;
  final String longitude;
  final String latitude;
  final String created_at;
  final String updated_at;


  MapData({this.id, this.name, this.longitude, this.latitude, this.created_at, this.updated_at});

  factory MapData.fromJson(Map<String, dynamic> json) {
    return MapData(
      id: json['id'],
      name: json['name'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}