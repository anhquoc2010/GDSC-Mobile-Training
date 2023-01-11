class LayerModel {
  final int id;
  final int floorNumber;
  final String imageUrl;
  final double startLatitude;
  final double startLongitude;
  final double endLatitude;
  final double endLongitude;
  final int sectorId;

  LayerModel({
    required this.id,
    required this.floorNumber,
    required this.imageUrl,
    required this.startLatitude,
    required this.startLongitude,
    required this.endLatitude,
    required this.endLongitude,
    required this.sectorId,
  });

  factory LayerModel.fromJson(Map<String, dynamic> json) {
    return LayerModel(
      id: json['id'],
      floorNumber: json['floorNumber'],
      imageUrl: json['imageUrl'],
      startLatitude: json['startLatitude'],
      startLongitude: json['startLongitude'],
      endLatitude: json['endLatitude'],
      endLongitude: json['endLongitude'],
      sectorId: json['sectorId'],
    );
  }
}
