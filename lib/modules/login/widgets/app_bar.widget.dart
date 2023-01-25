import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/core/theme/text_styles.dart';

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
            style: mulish700.copyWith(fontSize: 24),
          ),
        ),
      ],
    );
  }
}
