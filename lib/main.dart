import 'package:flutter/material.dart';
import 'package:woft_1st_project/Pages/SignUpPage.dart';
import 'package:woft_1st_project/Pages/about.dart';
import 'package:woft_1st_project/Pages/onBoarding.dart';
import 'package:woft_1st_project/Pages/productDetail.dart';
import 'package:woft_1st_project/screens/order_placed_screen.dart';
import 'package:woft_1st_project/widgets/signUpBackgroundImg.dart';
import 'Pages/SignInPage.dart';
import 'Pages/productList.dart';
import 'models/productTypes_model.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home:  onboarding(),
    );
  }
}


