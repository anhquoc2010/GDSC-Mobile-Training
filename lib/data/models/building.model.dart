import 'package:flutter_111122_login_screen/data/models/layer.model.dart';

class BuildingModel {
  final int id;
  final String name;
  final String? phone;
  final String description;
  final int categoryId;
  final String categoryName;
  final String createdAt;
  final String updatedAt;
  final List floors;
  final List<LayerModel> layers;

  //list layers

  BuildingModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.description,
    required this.categoryId,
    required this.categoryName,
    required this.createdAt,
    required this.updatedAt,
    required this.floors,
    required this.layers,
  });

  factory BuildingModel.fromJson(Map<String, dynamic> json) {
    return BuildingModel(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      description: json['description'],
      categoryId: json['categoryId'],
      categoryName: json['categoryName'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      floors: json['floors'],
      layers: List<dynamic>.from(json['layers'])
          .map((layer) => LayerModel.fromJson(layer))
          .toList(),
    );
  }
}
