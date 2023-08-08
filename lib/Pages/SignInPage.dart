import 'package:flutter/material.dart';
import 'package:woft_1st_project/Pages/SignUpPage.dart';
import 'package:woft_1st_project/widgets/signUpBackgroundImg.dart';
import 'package:woft_1st_project/widgets/signUpLoginBox.dart';
import 'package:woft_1st_project/widgets/signUpRegisterBox.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Stack(
        children: [
          SignUpBackgroundImage(),
          SingleChildScrollView(
            child:           SignUpRegisterBox(),
          )
        ],
        
      ),);
      
    
  }
}