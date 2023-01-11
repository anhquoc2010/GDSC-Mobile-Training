import 'package:flutter/material.dart';
import '../../../core/theme/mulish.dart';

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
        hintStyle: Mulish.mulishHomeStyle.copyWith(
          fontSize: 13,
          color: const Color(0xffE6E6E6),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff6666FF), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff6666FF), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Color(0xff6666FF),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
