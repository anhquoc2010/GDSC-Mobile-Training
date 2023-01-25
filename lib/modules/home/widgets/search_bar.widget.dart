import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/core/theme/text_styles.dart';
import '../../../core/theme/color_styles.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Nhập điểm đến...',
        hintStyle: mulish700.copyWith(
          fontSize: 13,
          color: platinum,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: veryLightBlue, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: veryLightBlue, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: veryLightBlue,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
