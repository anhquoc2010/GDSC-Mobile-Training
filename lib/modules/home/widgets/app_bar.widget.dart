import 'package:flutter/material.dart';
import '../../../core/theme/mulish.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  late final String userName;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => {
                  Navigator.of(context).pop(true),
                  Navigator.of(context).pop(userName),
                },
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final routeData = ModalRoute.of(context)?.settings.arguments as Map;
    userName = routeData['email'] ?? 'Guest';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Column(
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
                    onTap: _onWillPop,
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
      ),
    );
  }
}
