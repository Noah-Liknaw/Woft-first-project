import 'package:flutter/material.dart';
import 'package:woft_1st_project/Pages/SignUpPage.dart';
import 'package:woft_1st_project/widgets/signUpBackgroundImg.dart';

import 'Pages/SignInPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SigninPage(),
    );
  }
}


