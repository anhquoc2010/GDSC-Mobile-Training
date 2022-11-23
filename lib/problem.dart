// import 'package:flutter/material.dart';
// import 'package:flutter_111122_login_screen/shared_widget/login_app_bar.dart';
// import 'package:flutter_111122_login_screen/shared_widget/login_button.dart';
// import 'package:flutter_111122_login_screen/shared_widget/login_form.dart';
// import 'package:flutter_111122_login_screen/styles/text/mulish.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late String email;
//   late String password;
//   late bool isHidden;
//   late final TextEditingController emailFieldController;
//   late final TextEditingController passwordFieldController;
//   late final GlobalKey<FormState> loginFormKey;

//   @override
//   void initState() {
//     email = '@';
//     password = '*';
//     isHidden = true;
//     emailFieldController = TextEditingController();
//     passwordFieldController = TextEditingController();
//     loginFormKey = GlobalKey<FormState>();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         resizeToAvoidBottomInset: true,
//         body: LayoutBuilder(builder: (context, constraints) {
//           return SingleChildScrollView(
//             child: ConstrainedBox(
//               constraints: BoxConstraints(
//                 minWidth: constraints.maxWidth,
//                 minHeight: constraints.maxHeight,
//               ),
//               child: IntrinsicHeight(
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 55, 20, 30),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       const LoginAppBar(),
//                       LoginForm(
//                         loginFormKey: loginFormKey,
//                         email: email,
//                         password: password,
//                         isHidden: isHidden,
//                         emailFieldController: emailFieldController,
//                         passwordFieldController: passwordFieldController,
//                         showPassword: () {
//                           setState(() {
//                             isHidden = !isHidden;
//                           });
//                         },
//                       ),
//                       const SizedBox(height: 46),
//                       LoginButton(
//                         onPressed: () {
//                           setState(() {
//                             email = emailFieldController.text != ''
//                                 ? emailFieldController.text
//                                 : '@';
//                             password = passwordFieldController.text != ''
//                                 ? passwordFieldController.text
//                                 : '*';
//                             if (loginFormKey.currentState!.validate()) {}
//                           });
//                         },
//                       ),
//                       const Spacer(),
//                       RichText(
//                           text: TextSpan(children: [
//                         TextSpan(
//                           text: 'Chưa có tài khoản? ',
//                           style: Mulish.mulishStyle.copyWith(
//                             color: const Color(0xffB3B3B3),
//                           ),
//                         ),
//                         TextSpan(
//                           text: 'Đăng ký',
//                           style: Mulish.mulishStyle.copyWith(
//                             color: const Color(0xff3333FF),
//                           ),
//                         ),
//                       ])),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }));
//   }
// }
