import 'package:flutter/material.dart';
import '../../../data/models/building.model.dart';
import '../../../data/repositories/building.repository.dart';
import '../widgets/app_bar.widget.dart';
import '../widgets/discovery_list.widget.dart';
import '../widgets/search_bar.widget.dart';
import '../widgets/suggestion_list.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final BuildingRepository _buildingRepository = BuildingRepository();
  late List<BuildingModel> _buildings = [];

  @override
  void initState() {
    getBuildings();
    super.initState();
  }

  Future<void> getBuildings() async {
    final List<BuildingModel> buildings =
        await _buildingRepository.getBuildings();
    setState(() {
      _buildings = buildings;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 55, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HomeAppBar(),
                const SizedBox(height: 20),
                const HomeSearchBar(),
                const SizedBox(height: 15),
                HomeDiscoveryList(
                  buildings: _buildings,
                ),
                const SizedBox(height: 15),
                HomeSuggestionList(
                  buildings: _buildings,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
