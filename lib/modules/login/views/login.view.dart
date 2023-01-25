import 'package:flutter/material.dart';
import 'package:flutter_111122_login_screen/core/router/route_manager.dart';
import 'package:flutter_111122_login_screen/core/theme/color_styles.dart';
import 'package:flutter_111122_login_screen/core/theme/text_styles.dart';
import '../widgets/app_bar.widget.dart';
import '../widgets/button.widget.dart';
import '../widgets/form.widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;
  late bool isHidden;
  late final TextEditingController emailFieldController;
  late final TextEditingController passwordFieldController;
  late final GlobalKey<FormState> loginFormKey;

  @override
  void initState() {
    email = '@';
    password = '*';
    isHidden = true;
    emailFieldController = TextEditingController();
    passwordFieldController = TextEditingController();
    loginFormKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 55, 20, 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const LoginAppBar(),
                  LoginForm(
                    loginFormKey: loginFormKey,
                    email: email,
                    password: password,
                    isHidden: isHidden,
                    emailFieldController: emailFieldController,
                    passwordFieldController: passwordFieldController,
                    showPassword: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                  ),
                  const SizedBox(height: 46),
                  LoginButton(
                    onPressed: () async {
                      if (loginFormKey.currentState!.validate()) {
                        final result = await Navigator.of(context).pushNamed(
                          bottomNavRoute,
                          arguments: {
                            'email': emailFieldController.text,
                          },
                        );
                        setState(() {
                          emailFieldController.text = result.toString();
                          email = emailFieldController.text != ''
                              ? emailFieldController.text
                              : '@';
                          password = passwordFieldController.text != ''
                              ? passwordFieldController.text
                              : '*';
                        });
                      }
                    },
                  ),
                  const Spacer(),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Chưa có tài khoản? ',
                      style: mulish400.copyWith(
                        color: philippineSilver,
                      ),
                    ),
                    TextSpan(
                      text: 'Đăng ký',
                      style: mulish400.copyWith(
                        color: palatinateBlue,
                      ),
                    ),
                  ])),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
