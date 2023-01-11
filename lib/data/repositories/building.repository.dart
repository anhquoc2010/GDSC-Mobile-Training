import 'package:flutter_111122_login_screen/data/models/building.model.dart';
import '../datasources/building.datasource.dart';

class BuildingRepository {
  late BuildingDataSource _buildingDataSource;

  static final BuildingRepository _instance = BuildingRepository._internal();

  factory BuildingRepository() {
    return _instance;
  }

  BuildingRepository._internal() {
    _buildingDataSource = BuildingDataSource();
  }

  Future<List<BuildingModel>> getBuildings() {
    return _buildingDataSource.getBuildings();
  }
}
