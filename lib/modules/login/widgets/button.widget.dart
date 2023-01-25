import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/core/theme/color_styles.dart';
import 'package:flutter_111122_login_screen/core/theme/text_styles.dart';

class LoginButton extends StatelessWidget {
  final void Function() onPressed;

  const LoginButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.2),
          )
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: veryLightBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          'Đăng nhập',
          style: mulish700.copyWith(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
