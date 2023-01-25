import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/core/theme/color_styles.dart';
import 'package:flutter_111122_login_screen/core/theme/text_styles.dart';

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
                style: mulish400,
              ),
            ),
          ),
          TextFormField(
            controller: emailFieldController,
            style: mulish400,
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
                color: platinum,
              ),
              hintText: 'Email',
              hintStyle: mulish400.copyWith(
                color: platinum,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: platinum, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: veryLightBlue, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: pastelRed, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: pastelRed, width: 1.0),
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
                style: mulish400,
              ),
            ),
          ),
          TextFormField(
            controller: passwordFieldController,
            obscureText: isHidden,
            style: mulish400,
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
                color: platinum,
              ),
              suffixIcon: IconButton(
                splashRadius: 20,
                onPressed: showPassword,
                icon: Icon(
                  isHidden
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 16,
                  color: platinum,
                ),
              ),
              hintText: 'Mật khẩu',
              hintStyle: mulish400.copyWith(
                color: platinum,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: platinum, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: veryLightBlue, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: pastelRed, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: pastelRed, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          Align(
            heightFactor: 1.5,
            alignment: Alignment.centerRight,
            child: Text(
              'Quên mật khẩu?',
              style: mulish700.copyWith(color: palatinateBlue),
            ),
          ),
        ],
      ),
    );
  }
}
