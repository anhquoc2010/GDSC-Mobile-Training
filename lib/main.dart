import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String email = '@';
  late String password = '*';
  bool isHiden = true;
  IconData iconHiden = Icons.visibility_outlined;
  final TextEditingController emailFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 55, 20, 30),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/images/icon_app.png'),
              width: 80,
              height: 80,
            ),
            const SizedBox(height: 40),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Đăng nhập',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0F2D52),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tài khoản: $email',
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff0F2D52),
                  ),
                ),
              ),
            ),
            TextField(
              controller: emailFieldController,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Mulish',
                color: Color(0xff0F2D52),
              ),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 14),
                prefixIcon: Icon(
                  Icons.email,
                  size: 16,
                  color: Color(0xffE6E6E6),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  color: Color(0xffE6E6E6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff6666FF), width: 1.0),
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
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff0F2D52),
                  ),
                ),
              ),
            ),
            TextField(
              controller: passwordFieldController,
              obscureText: isHiden,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Mulish',
                color: Color(0xff0F2D52),
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                prefixIcon: const Icon(
                  Icons.lock,
                  size: 16,
                  color: Color(0xffE6E6E6),
                ),
                suffixIcon: IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    setState(() {
                      isHiden = !isHiden;
                      iconHiden = isHiden
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined;
                    });
                  },
                  icon: Icon(
                    iconHiden,
                    size: 16,
                    color: const Color(0xffE6E6E6),
                  ),
                ),
                hintText: 'Mật khẩu',
                hintStyle: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  color: Color(0xffE6E6E6),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE6E6E6), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff6666FF), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const Align(
              heightFactor: 1.5,
              alignment: Alignment.centerRight,
              child: Text(
                'Quên mật khẩu?',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3333FF),
                ),
              ),
            ),
            const SizedBox(height: 46),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    email = emailFieldController.text != ''
                        ? emailFieldController.text
                        : '@';
                    password = passwordFieldController.text != ''
                        ? passwordFieldController.text
                        : '*';
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6666FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  'Đăng nhập',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const Spacer(),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: 'Chưa có tài khoản? ',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  color: Color(0xffB3B3B3),
                ),
              ),
              TextSpan(
                text: 'Đăng ký',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3333FF),
                ),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
