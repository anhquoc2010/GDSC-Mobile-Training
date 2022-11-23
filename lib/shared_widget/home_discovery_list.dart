import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/styles/text/mulish.dart';

class HomeDiscoveryList extends StatelessWidget {
  const HomeDiscoveryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Khám phá thêm',
            style: Mulish.mulishHomeStyle,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 117,
          child: ListView.separated(
            itemCount: 4,
            controller: ScrollController(),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            itemBuilder: (context, index) => GestureDetector(
              child: Container(
                width: 139,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.ctvnews.ca/polopoly_fs/1.5036379.1595530668!/httpImage/image.jpg_gen/derivatives/landscape_1020/image.jpg'),
                    fit: BoxFit.cover,
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
                    'Top những thành phố đáng sống',
                    style: Mulish.mulishLoginStyle.copyWith(
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
