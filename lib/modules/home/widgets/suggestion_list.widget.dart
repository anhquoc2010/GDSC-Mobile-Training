import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import '../../../core/theme/mulish.dart';
import '../../../data/models/building.model.dart';

class HomeSuggestionList extends StatelessWidget {
  final List<BuildingModel> buildings;
  const HomeSuggestionList({
    super.key,
    required this.buildings,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Đề xuất',
              style: Mulish.mulishHomeStyle,
            ),
            Text(
              'xem tất cả',
              style: Mulish.mulishLoginStyle.copyWith(
                color: const Color(0xFF0000FF),
                fontSize: 11,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ChipList(
          listOfChipNames: buildings.map((e) => e.name).toList(),
          style: Mulish.mulishHomeStyle.copyWith(
            color: Colors.white,
            fontSize: 12,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          listOfChipIndicesCurrentlySeclected: [0],
          mainAxisAlignment: MainAxisAlignment.start,
          activeBgColorList: const [Color(0xff3333FF)],
          activeTextColorList: const [Colors.white],
          inactiveBorderColorList: const [Color(0xff3333FF)],
          inactiveTextColorList: const [Color(0xff3333FF)],
          borderRadiiList: const [50],
        ),
        const SizedBox(height: 15),
        GridView.builder(
          padding: const EdgeInsets.only(bottom: 20),
          shrinkWrap: true,
          itemCount: buildings.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            crossAxisSpacing: 27,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(buildings[index].layers.isEmpty
                            ? 'https://dut.udn.vn/Files/admin/images/Tuyen_sinh/2021/Sodo/Sodo2.png'
                            : buildings[index].layers[0].imageUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          buildings[index].name,
                          style: Mulish.mulishHomeStyle.copyWith(fontSize: 15),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color(0xffCCCCCC),
                              size: 15,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              buildings[index].categoryName,
                              style: Mulish.mulishHomeStyle.copyWith(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.description,
                              color: Color(0xffCCCCCC),
                              size: 15,
                            ),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                buildings[index].description,
                                style: Mulish.mulishHomeStyle.copyWith(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.layers,
                              color: Color(0xffCCCCCC),
                              size: 15,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              '${buildings[index].layers.length.toString()} tầng',
                              style: Mulish.mulishHomeStyle.copyWith(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.favorite_border,
                            color: Color(0xffCCCCCC),
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
