import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/core/theme/text_styles.dart';
import '../../../data/models/building.model.dart';

class HomeDiscoveryList extends StatelessWidget {
  final List<BuildingModel> buildings;
  const HomeDiscoveryList({
    super.key,
    required this.buildings,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Khám phá thêm',
            style: mulish700,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 117,
          child: ListView.separated(
            itemCount: buildings.length,
            controller: ScrollController(),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            itemBuilder: (context, index) => GestureDetector(
              child: Container(
                width: 139,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: NetworkImage(buildings[index].layers.isEmpty
                        ? 'https://dut.udn.vn/Files/admin/images/Tuyen_sinh/2021/Sodo/Sodo2.png'
                        : buildings[index].layers[0].imageUrl),
                    fit: BoxFit.contain,
                  ),
                ),
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 139,
                  height: 31,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.black.withOpacity(0.4),
                  ),
                  child: Text(
                    buildings[index].name,
                    style: mulish400.copyWith(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
