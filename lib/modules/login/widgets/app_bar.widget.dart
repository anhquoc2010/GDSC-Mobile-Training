import 'package:flutter/material.dart';
import '../../../core/theme/mulish.dart';


class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/icon_app.png',
          width: 80,
          height: 80,
        ),
        const SizedBox(height: 40),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Đăng nhập',
            style: Mulish.mulishLoginStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
