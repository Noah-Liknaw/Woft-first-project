import 'package:flutter/material.dart';
import 'package:woft_1st_project/widgets/signUpBackgroundImg.dart';
import 'package:woft_1st_project/widgets/signUpLoginBox.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: 
      Stack(
        children: [
          SignUpBackgroundImage(),
          signUpLoginBox(),
        ],
      ),
    );
  }
}