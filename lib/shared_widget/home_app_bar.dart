import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/styles/text/mulish.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final routeData = ModalRoute.of(context)?.settings.arguments as Map;
    final userName = routeData['email'] ?? 'Guest';
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(userName);
                  },
                  child: Text(
                    userName.toString(),
                    style: Mulish.mulishHomeStyle,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                //circle border icon
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xff3333FF),
                      width: 1,
                    ),
                  ),
                  child: const Icon(
                    Icons.notifications_none_rounded,
                    color: Color(0xff3333FF),
                    size: 25,
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 7,
                  child: Container(
                    alignment: Alignment.center,
                    width: 13,
                    height: 13,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(
                        fontSize: 7,
                        color: Colors.white,
                        fontFamily: 'Mulish',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
