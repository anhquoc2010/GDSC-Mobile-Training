// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../styles/text/mulish.dart';

class LoginForm extends StatelessWidget {
  final String email;
  final String password;
  final bool isHidden;
  final TextEditingController emailFieldController;
  final TextEditingController passwordFieldController;
  final void Function() showPassword;
  final GlobalKey<FormState> loginFormKey;

  const LoginForm({
    Key? key,
    required this.email,
    required this.password,
    required this.isHidden,
    required this.emailFieldController,
    required this.passwordFieldController,
    required this.showPassword,
    required this.loginFormKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tài khoản: $email',
                style: Mulish.mulishLoginStyle,
              ),
            ),
          ),
          TextFormField(
            controller: emailFieldController,
            style: Mulish.mulishLoginStyle,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Vui lòng nhập email';
              }
              if (EmailValidator.validate(value) == false) {
                return 'Email không hợp lệ';
              }
              return null;
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 14),
              prefixIcon: const Icon(
                Icons.email,
                size: 16,
                color: Color(0xffE6E6E6),
              ),
              hintText: 'Email',
              hintStyle: Mulish.mulishLoginStyle.copyWith(
                color: const Color(0xffE6E6E6),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff6666FF), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFF6666), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFF6666), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Mật khẩu: $password',
                style: Mulish.mulishLoginStyle,
              ),
            ),
          ),
          TextFormField(
            controller: passwordFieldController,
            obscureText: isHidden,
            style: Mulish.mulishLoginStyle,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Vui lòng nhập mật khẩu';
              }
              if (value.length < 6) {
                return 'Mật khẩu phải có ít nhất 6 ký tự';
              }
              return null;
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 14),
              prefixIcon: const Icon(
                Icons.lock,
                size: 16,
                color: Color(0xffE6E6E6),
              ),
              suffixIcon: IconButton(
                splashRadius: 20,
                onPressed: showPassword,
                icon: Icon(
                  isHidden
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 16,
                  color: const Color(0xffE6E6E6),
                ),
              ),
              hintText: 'Mật khẩu',
              hintStyle: Mulish.mulishLoginStyle.copyWith(
                color: const Color(0xffE6E6E6),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff6666FF), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFF6666), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFF6666), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          Align(
            heightFactor: 1.5,
            alignment: Alignment.centerRight,
            child: Text(
              'Quên mật khẩu?',
              style: Mulish.mulishLoginStyle.copyWith(
                fontWeight: FontWeight.w700,
                color: const Color(0xff3333FF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
