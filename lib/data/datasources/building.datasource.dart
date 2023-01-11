import 'package:flutter_111122_login_screen/data/models/building.model.dart';
import '../../core/utils/dio.util.dart';

class BuildingDataSource {
  static final BuildingDataSource _instance = BuildingDataSource._internal();

  factory BuildingDataSource() {
    return _instance;
  }

  BuildingDataSource._internal();

  Future<List<BuildingModel>> getBuildings() async {
    final HttpRequestRespone response = await DioUtil.get(
        'https://api.unigo.pro/api/tools/buildings?schoolId=1');

    final List<dynamic> data = response.data;
    final List<BuildingModel> buildings = data
        .map((dynamic building) => BuildingModel.fromJson(building))
        .toList();

    return buildings;
  }
}
