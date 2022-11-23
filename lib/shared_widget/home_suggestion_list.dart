import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/styles/text/mulish.dart';

class HomeSuggestionList extends StatelessWidget {
  const HomeSuggestionList({super.key});

  @override
  Widget build(BuildContext context) {
    const citiesNameList = [
      'Tất cả',
      'Đà Nẵng',
      'Hà Nội',
      'Sài Gòn',
    ];
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
          listOfChipNames: citiesNameList,
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
          itemCount: 7,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
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
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://haidangtravel.com/image/blog/Mountain-Lodge-Homestay-Mang-Den.JPG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Coco homestay',
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
                              'Tân An, Hội An',
                              style: Mulish.mulishHomeStyle.copyWith(
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.check,
                              color: Color(0xffCCCCCC),
                              size: 15,
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.star,
                              color: Color(0xffE6E600),
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              color: Color(0xffE6E600),
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              color: Color(0xffE6E600),
                              size: 15,
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
